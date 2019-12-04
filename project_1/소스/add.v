module add(output [15:0] sum,output overflow,input [15:0] a,b, input c_in);

	wire [4:1] c;
	wire s1,s2;
	
	fullAdder4 n1(sum[3:0],c[1],a[3:0],b[3:0],c_in);
	fullAdder4 n2(sum[7:4],c[2],a[7:4],b[7:4],c[1]);
	fullAdder4 n3(sum[11:8],c[3],a[11:8],b[11:8],c[2]);
	fullAdder4 n4(sum[15:12],c[4],a[15:12],b[15:12],c[3]);

	//to get overflow
	xnor n5(s1,a[15],b[15]);
	xor n6(s2,a[15],sum[15]);
	and n7(overflow,s1,s2);

endmodule
