`timescale 1ns / 1ps

module elevator_tb;

	// Inputs
	reg x1;
	reg x0;
	reg clk;
	reg emergency;

	wire z1;
	wire z0;

	// Instantiate the Unit Under Test (UUT)
	elevator uut (
		.x0(x0), 
		.x1(x1),
		.clk(clk),
		.emergency(emergency),
		.z1(z1),
		.z0(z0)
	);

		initial begin
			// Initialize Inputs
			emergency = 1; clk = 1; //x0 = 0; x1 = 0;
			// Sequence
			// Up to second floor
			x1 = 1;
			x0 = 1;
			#10
			emergency = 0;
			// Up to third floor
			x1 = 1;
			x0 = 1;
			#10
			// Up to fourth floor
			x1 = 1;
			x0 = 1;
			#10
			// Down to third floor
			x1 = 0;
			x0 = 1;
			#10
			// Down to second floor
			x1 = 0;
			x0 = 1;
			#10
			// Up to third floor
			x1 = 1;
			x0 = 1;
			#10
			emergency = 1;

		end
	always
		#5 clk = ~clk;
endmodule