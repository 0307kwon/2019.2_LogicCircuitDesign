module CLA(output [15:0] sum,
	output cout,
	input [15:0] ina,inb,
	input cin
	);

	wire [2:0] cout_t;

	CLA_4bit n1(sum[3:0],cout_t[0],ina[3:0],inb[3:0],cin);
	CLA_4bit n2(sum[7:4],cout_t[1],ina[7:4],inb[7:4],cout_t[0]);
	CLA_4bit n3(sum[11:8],cout_t[2],ina[11:8],inb[11:8],cout_t[1]);
	CLA_4bit n4(sum[15:12],cout,ina[15:12],inb[15:12],cout_t[2]);

endmodule

	