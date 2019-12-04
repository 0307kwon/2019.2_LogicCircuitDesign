module CLA_4bit(
	output [3:0] sum,
	output cout,
	input [3:0] ina,inb,
	input cin
	);

	wire c1,c2,c3;
	wire [3:0] cout_t;

	CLB_4bit n1(c1,c2,c3,cout,ina,inb,cin);
	
	fullAdder1 n2(sum[0],cout_t[0],ina[0],inb[0],cin);
	fullAdder1 n3(sum[1],cout_t[1],ina[1],inb[1],c1);
	fullAdder1 n4(sum[2],cout_t[2],ina[2],inb[2],c2);
	fullAdder1 n5(sum[3],cout_t[3],ina[3],inb[3],c3);

endmodule

	