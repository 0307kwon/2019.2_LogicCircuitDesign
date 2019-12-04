module CSA_1(output [15:0] sum, output cout, input [15:0] ina,inb, input cin);
	
	wire [15:0] sum0;
	wire cout_0;
	wire [15:0] sum1;
	wire cout_1;

	reg cin_0;
	reg cin_1;

	CLA n1(sum0,cout_0,ina,inb,cin_0);
	CLA n2(sum1,cout_1,ina,inb,cin_1);

	MUX21 #(3) a0(cout,cout_0,cout_1,cin);

	MUX21 #(3) a1(sum,sum0,sum1,cin);


	initial begin
		cin_0 = 0;
		cin_1 = 1;
	end

endmodule
