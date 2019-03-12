`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:46:18 02/22/2019 
// Design Name: 
// Module Name:    elevator 
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
module elevator(clk, emergency, x1, x0, z1, z0);

input clk, emergency, x1, x0; // Input Variables, emergency = reset to initial state
output z1, z0; // Output Variables
wire s1, s0, s1prime, s0prime; // D Flip Flop output wires

wire D1, D0; // Input wires into flip flops

// Instantiating the two D flip flops
dff FF1(D1, clk, emergency, s1, s1prime);
dff FF2(D0, clk, emergency, s0, s0prime);

// Assigning flip fop input wires
assign D1 = ((x1 & s0) || (~x0 & s1) || (s1 & s0prime));
assign D0 = ((x1 & s0prime) || (s1 & s0 & x0) || (s1prime & s0 & ~x0) || (s1 & s0prime & ~x0));

// Assigning outputs
assign z1 = D1; // ((s1 & ~x0) || (s0 & x1) || (s1 & s0prime));
assign z0 = D0;// ((x1 & s0prime) || (s1 & s0 & x0) || (s0 & s1prime & ~x0) || (s1 & s0prime & ~x0));

endmodule