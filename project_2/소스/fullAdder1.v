`timescale 1ns/1ns
module fullAdder1(output sum,c_out, input a,b,c_in);
	wire s1,c1,s2;
	
	xor #(6) n1(s1,a,b);
	and #(7) n2(c1,a,b);
	xor #(6) n3(sum,s1,c_in);
	and #(7) n4(s2,s1,c_in);
	xor #(6) n5(c_out,s2,c1);

endmodule
