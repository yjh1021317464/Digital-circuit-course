`timescale 1ns / 1ps

module Comparator_tb;
	
	reg [1:0] a;
	reg [1:0] b;
	wire lt,gt,eq;
	integer i,j;

	Comparator DUT (.a(a),.b(b),.lt(lt),.gt(gt),.eq(eq));

	initial begin
		for (i=0;i<4;i=i+1) begin
		a=i;
			for(j=0;j<4;j=j+1) begin
				b=j;
				
				#10;
			end
		end
	end

endmodule
