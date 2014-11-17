//==================================================================================================
//  Filename      : testbench.v
//  Created On    : 2014-11-16 00:53:52
//  Last Modified : 2014-11-16 00:56:26
//  Revision      : 
//  Author        : elnx
//  Email         : p4ngb0y@gmail.com
//
//  Description   : A testbench for ALu_4bit.I use Xilinx ISE to create a template for it.
//
//
//==================================================================================================
`timescale 1ns / 1ps

module testbench_sigma;

	reg [3:0] a;
	reg [3:0] b;
	reg [3:0] s;
	reg m;
	reg cin_re;
	reg clock;

	wire cout_re;
	wire [3:0] y;

	alu_4bit uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.m(m), 
		.cin_re(cin_re), 
		.cout_re(cout_re), 
		.y(y)
	);

	initial 
		begin
			a = 0;
			b = 0;
			s = 4'h9;
			m = 0;
			cin_re = 1;//no cin 
			clock = 0;
		end
	always #50 clock = ~clock;
	always @(posedge clock)
		begin
			if (y == 15)
				begin
					a <= 0;
					b <= 0;
				end
			else
				begin
					a <= y;
					b <= b + 1;
				end
		end
	
      
endmodule
