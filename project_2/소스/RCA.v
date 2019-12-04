module RCA(output [15:0] sum,output cout,input [15:0] ina,inb, input cin);

	wire [4:1] c;
	wire s1,s2;
	
	fullAdder4 n1(sum[3:0],c[1],ina[3:0],inb[3:0],cin);
	fullAdder4 n2(sum[7:4],c[2],ina[7:4],inb[7:4],c[1]);
	fullAdder4 n3(sum[11:8],c[3],ina[11:8],inb[11:8],c[2]);
	fullAdder4 n4(sum[15:12],cout,ina[15:12],inb[15:12],c[3]);


endmodule
