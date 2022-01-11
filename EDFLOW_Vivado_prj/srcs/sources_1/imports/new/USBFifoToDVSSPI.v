`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2020 01:54:28 PM
// Design Name: 
// Module Name: USBFifoToDVSSPI
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module USBFifoToDVSSPI(
    input clk_i,
    input rst_i,
    input spiReady_i,
    input setupDataRecStart_i, // setup packet data started pulse
    input outDataRecStart_i,   // out packet data started pulse
    input dataRecEnd_i,        // data completed pulse
    
    input inputDataValid_i,
    input [7:0] inputData_i,
    
    input dvsRXDataValid_i,
    input [47:0] dvsRXByte_i,
    input [1:0] dvs_resp_addr_i,
    
    // Debug
    output setupPktReceived_q_do,      
    output outPktReceived_q_do,
    output dataSPIToSendPrepared_w_do,
    output [3:0] wrSetupIndex_q_do,
    output [2:0] wrOUTIndex_q_do,
    
    output outputDataValid_o,
    output [47:0] outputData_o,
    output rxDataComplete_o,
    output [7:0] dvs_resp_data_o
    );
    
reg dataValid_q;   
reg [7:0] data_q;

//-----------------------------------------------------------------
// USB: Setup packet capture 
//-----------------------------------------------------------------
reg [7:0] setup_packet_q[0:7];
reg wrSetupEn_q;
reg setupPktReceived_q;

reg [3:0] wrSetupIndex_q;
always @ (posedge clk_i or posedge rst_i)
if (rst_i)
begin
    wrSetupIndex_q <= 0;
    wrSetupEn_q <= 0;
end
else if(setupDataRecStart_i)
begin
    wrSetupIndex_q <= 0;
    wrSetupEn_q <= 1;
     
    setup_packet_q[0]  <= 8'b0;
    setup_packet_q[1]  <= 8'b0;
    setup_packet_q[2]  <= 8'b0;
    setup_packet_q[3]  <= 8'b0;
    setup_packet_q[4]  <= 8'b0;
    setup_packet_q[5]  <= 8'b0;
    setup_packet_q[6]  <= 8'b0;
    setup_packet_q[7]  <= 8'b0;
end
else if(dataRecEnd_i)
begin
    wrSetupEn_q <= 0;
end
else if(inputDataValid_i && wrSetupEn_q)
begin
    setup_packet_q[wrSetupIndex_q] <= inputData_i;
    wrSetupIndex_q <= wrSetupIndex_q + 1;
end

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
begin
    setupPktReceived_q <= 0;
end
else
begin
if(wrSetupIndex_q == 8 && dataRecEnd_i)     // A pulse indicate that the last setup packet data already received
    setupPktReceived_q <= 1;    
else
    setupPktReceived_q <= 0;    

end
//-----------------------------------------------------------------
// USB: OUT packet capture 
//-----------------------------------------------------------------
reg [7:0] out_packet_q[0:3];
reg wrOUTEn_q;
reg outPktReceived_q;

reg [2:0] wrOUTIndex_q;
always @ (posedge clk_i or posedge rst_i)
if (rst_i)
begin
    wrOUTIndex_q <= 0;
    wrOUTEn_q <= 0;
end
else if(outDataRecStart_i)
begin
    wrOUTIndex_q <= 0;
    wrOUTEn_q <= 1;
     
    out_packet_q[0]  <= 8'b0;
    out_packet_q[1]  <= 8'b0;
    out_packet_q[2]  <= 8'b0;
    out_packet_q[3]  <= 8'b0;
    
end
else if(dataRecEnd_i)
begin
    wrOUTEn_q <= 0;
end
else if(inputDataValid_i && wrOUTEn_q)
begin
    out_packet_q[wrOUTIndex_q] <= inputData_i;
    wrOUTIndex_q <= wrOUTIndex_q + 1;
end

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
begin
    outPktReceived_q <= 0;
end
else 
begin
if(wrOUTIndex_q == 4 && dataRecEnd_i)     // A pulse indicate that the last out packet data already received
    outPktReceived_q <= 1;    
else
    outPktReceived_q <= 0;  
end    
//-----------------------------------------------------------------
// Generate the data to be sent to the DVS 
// USB received LSB first, but SPI send MSB first. Swap data order.
// For DVS SPI operation, we always need 6 bytes since SPI actually
// is a shifted register protocol.
//-----------------------------------------------------------------
wire [7:0] dataSPIToSend_w[0:5];
assign dataSPIToSend_w[0] = out_packet_q[3];
assign dataSPIToSend_w[1] = out_packet_q[2];
assign dataSPIToSend_w[2] = out_packet_q[1];
assign dataSPIToSend_w[3] = out_packet_q[0];
assign dataSPIToSend_w[4] = setup_packet_q[4];
assign dataSPIToSend_w[5] = {setup_packet_q[0][7], setup_packet_q[2][6:0]};


wire [47:0] dataSPIToSendComb_w;
assign dataSPIToSendComb_w = {dataSPIToSend_w[5], dataSPIToSend_w[4], dataSPIToSend_w[3], dataSPIToSend_w[2], dataSPIToSend_w[1], dataSPIToSend_w[0]};

reg[1:0] pulseCnt_q;
//always @ (posedge clk_i or posedge rst_i)
//if (rst_i)
//begin
//    pulseCnt_q <= 0;
//end
//else if(setupPktReceived_q)
//    pulseCnt_q <= 2;
//else if(outPktReceived_q)
//    pulseCnt_q <= pulseCnt_q + 1;

reg dataSPIToSendPrepared_r;    

always @ *
begin
    if (setup_packet_q[0] == 8'hc0)
    begin
        dataSPIToSendPrepared_r = setupPktReceived_q;
    end
    else if (setup_packet_q[0] == 8'h40)
    begin   
        dataSPIToSendPrepared_r = outPktReceived_q;
    end
    else
        dataSPIToSendPrepared_r = 0;
end

wire dataSPIToSendPrepared_w = dataSPIToSendPrepared_r;

//-----------------------------------------------------------------
// SPI: output data to SPI master for sending to the DVS 
//-----------------------------------------------------------------
reg [3:0] rdIndex_q;
reg [47:0] outputData_q;
reg outputDataValid_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
begin
    rdIndex_q <= 0;
    outputData_q <= 0;
    outputDataValid_q <= 0;
end
else if(dataSPIToSendPrepared_w)
begin
    rdIndex_q <= 0;
end
else if(spiReady_i && (rdIndex_q < 1))
begin
    outputDataValid_q <= 1;
    outputData_q <= dataSPIToSendComb_w;
    
    rdIndex_q <= rdIndex_q + 1;
end
else
begin
    outputData_q <= 0;
    outputDataValid_q <= 0;        
end

//-----------------------------------------------------------------
// SPI: Receive SPI data responsed by the DVS 
//-----------------------------------------------------------------
reg [47:0] DVSRespData_q;
reg rxDataComplete_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
begin
    rxDataComplete_q <= 0;
end
else if(setupDataRecStart_i)   //  Setup token received, de-active the rxDataComplete_q
begin
    rxDataComplete_q <= 0;
end
// We received a new setup request and it is not a Vendor Setup in request.
// In this case, act the host immediatelly.
else if (setup_packet_q[0] != 8'hC0 && setupPktReceived_q)  
begin
    rxDataComplete_q <= 1;
end
else if(dvsRXDataValid_i)
begin
    DVSRespData_q <= dvsRXByte_i; // Valid SPI data returned from DVS, we can send it back to USB for sending it to the host. 
    rxDataComplete_q <= 1;
end

//-----------------------------------------------------------------
// SPI: Output the DVS response data
// make it could be read out within one cycle
//-----------------------------------------------------------------
wire [7:0] dvs_resp_data_packet[0:3];
assign dvs_resp_data_packet[3] = DVSRespData_q[7:0];
assign dvs_resp_data_packet[2] = DVSRespData_q[15:8];
assign dvs_resp_data_packet[1] = DVSRespData_q[23:16];
assign dvs_resp_data_packet[0] = DVSRespData_q[31:24];

assign dvs_resp_data_o = rxDataComplete_q ? dvs_resp_data_packet[dvs_resp_addr_i] : 8'hx;
    

assign outputDataValid_o = outputDataValid_q;
assign outputData_o = outputData_q;

assign rxDataComplete_o = rxDataComplete_q;

// Debug   
//assign wrIndex_do = wrIndex;    
assign setupPktReceived_q_do = setupPktReceived_q;        
assign outPktReceived_q_do = outPktReceived_q;
assign dataSPIToSendPrepared_w_do = dataSPIToSendPrepared_w;

assign wrSetupIndex_q_do = wrSetupIndex_q;
assign wrOUTIndex_q_do = wrOUTIndex_q;

endmodule
