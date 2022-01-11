`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2020 10:38:02 AM
// Design Name: 
// Module Name: dataSwitch
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


module dataSwitch
   #(parameter DATA_WIDTH = 16,
   parameter COUNTER_NUM_WIDTH = 64)
   (
    input clk_i,
    input rst_n_i,
    input select_i,  
    input data_vd_i,
    input [DATA_WIDTH - 1:0] data_i,
    
    output [DATA_WIDTH - 1:0] data_o_1,
    output data_o_vd1,
    output [COUNTER_NUM_WIDTH - 1:0] data_o_num1,
    output [DATA_WIDTH - 1:0] data_o_2,
    output data_o_vd2,
    output [COUNTER_NUM_WIDTH - 1:0] data_o_num2
    );

// select_i: 0: output to data_o_1, 1: output to data_o_2
assign data_o_1 = select_i & data_vd_i ? {DATA_WIDTH{1'bx}} : data_i;   
assign data_o_vd1 = select_i & data_vd_i ? 0 : 1;   
assign data_o_2 = select_i & data_vd_i ? data_i :{DATA_WIDTH{1'bx}};    
assign data_o_vd2 = select_i & data_vd_i ? 1 : 0;   

reg[COUNTER_NUM_WIDTH - 1:0] numCh1, numCh2;
always @ (posedge clk_i or negedge rst_n_i)
begin
    if (!rst_n_i)
    begin
        numCh1 <= 0;
        numCh2 <= 0;
    end
    else
    begin
        if(data_vd_i)
        begin
            if(select_i == 0)
            begin
                numCh1 <= numCh1 + 1;
            end
            else
            begin
                numCh2 <= numCh2 + 1;                
            end
        end
    end
end

assign data_o_num1 = numCh1;
assign data_o_num2 = numCh2;

endmodule
