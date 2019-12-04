module ALU(output [15:0] out2138, output overflow, input [15:0] ina,inb, input [1:0] sel);
	
	reg c_in0;
	reg c_in1;
	
	wire [16:0] y1,y2,y3,y4; // [0~15] => out2138 [16] => overflow
	//y1 : +
	//y2 : -
	//y3 : *
	//y4 : /

	add n1(y1[15:0],y1[16],ina,inb,c_in0); // +
	sub n2(y2[15:0],y2[16],ina,inb,c_in1); // -
	mul n3(y3[15:0],y3[16],ina,inb); // *
	div n4(y4[15:0],y4[16],ina,inb); // /

	mux41 u1(out2138,overflow,y1,y2,y3,y4,sel);

	initial begin
		c_in0 = 0;
		c_in1 = 1;
	end

endmodule
