Team - Shyam Venkatasubramanian, Samuel Lee

For the Hackathon Project, our team designed a elevator. We created a binary 
encoding scheme (01 = elevator moves down 1 floor, 11 = elevator moves up one floor)
complete with a "reset" button to move the elevator down to the first floor auromatically. 
As part of the design process, we created a state table accounting for all possible input 
combinations of moving "up", "down", or "resetting", and used D flip-flops to create a sequential 
system to implement our design. We then used K maps to simplify our state table (accounting for the D 
flip-flops and the outputs), and obtained four switching expressions (two for the inputs, and two 
for the outputs). This entire process is seen in the "Minimzation.jpg" image. 

Following this, we used Verilog to implement the elevator design. The files we created are seen 
in the parent ZIP file. We coded the inputs and outputs in ISE and gave regard to the sequential nature of 
the elevator (elevator.v). We also called a D flip flop module in our main elevator.v module (dff.v) to
obtain the next state used by the sequential circuit. The schematic of our circuit is shown by the top
level image, "RTL Schematic Upper.JPG", and the lower level image "RTL Schematic Lower.JPG". 

Finally, to test out circuit, we created a testbench file to demonstrate that for different inputs,
our elevator would indeed move to the correct floor. The first four input sequences resulted in
the proper output, but we did encounter an error with the fifth input. The elevator remainined on the 
third floor although the second floor was supposed to be the output. Apart from this, the testbench demonstrated
that our implementation was on the right track. Time was the main limiting factor in this debugging
process. This testbench output waveform is shown in "Waveform.jpg"