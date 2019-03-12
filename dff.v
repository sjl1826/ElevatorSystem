`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:49:48 02/22/2019 
// Design Name: 
// Module Name:    dff 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module dff(D, clk, emergency, s, sprime);

output reg  s; 
output sprime; 
input D, clk, emergency; 

assign sprime = ~s; 

always @(posedge clk) 
begin 
 if (emergency == 1'b1) //If not at emergency (a.k.a reset) 
	s = 1'b0;
 else 
	s = D;
end 

endmodule
