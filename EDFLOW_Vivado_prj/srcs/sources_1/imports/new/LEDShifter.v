`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2019 08:48:03 PM
// Design Name: 
// Module Name: LEDShifter
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



module LEDShifter#(parameter LEDNum = 6)(clk,rstn,led);
input clk, rstn;
output[LEDNum - 1:0] led;
reg[18:0] count;
reg[7:0] cnt;
//10MHz,100ns,100ns*500_000=50ms,2^19  count=[18:0]
parameter dely50ms=500_000;
 
always @(posedge clk or negedge rstn)
begin 
		if(!rstn) begin	count<=18'd0;end
	else if(count==dely50ms) begin count<=16'd0; end
	else begin count<=count+1'd1;end
end

//Shifting LEDs
reg[LEDNum - 1:0] shiftL;
 
always @(posedge clk)
begin
    if(count==dely50ms) 
	   if(shiftL[LEDNum - 1] == 0) 
           begin 
               shiftL<=6'b111110;
           end
       else    
           begin 
               shiftL<={shiftL<<1};
           end	
	else 
	   begin
	       shiftL<=shiftL;
       end	
end
 
assign led=shiftL;
endmodule