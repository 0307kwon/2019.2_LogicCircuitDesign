module sub(output [15:0] sum,output overflow,input [15:0] a,b,c_in);
	wire [15:0] b_inverse;

	not n1[15:0](b_inverse,b);
	add n2(sum,overflow,a,b_inverse,c_in);

endmodule
