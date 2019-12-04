module mul(output [15:0] sum, output overflow, input [15:0] a,b);
	reg zero;
	reg one;
	reg [15:0] sum_init;
	wire [15:0] sum_shift[15:0];
	wire [15:0] sum_result[15:1];
	wire [15:0] c_out;
	wire c_out2;
	wire overflow_temp[13:0];

	mul_aid #(0) n0(sum_shift[0],c_out[0],a,b[0]);
	add u0(sum_result[1],c_out2,sum_init,sum_shift[0],zero);
	mul_aid #(1) n1(sum_shift[1],c_out[1],a,b[1]);
	add u1(sum_result[2],c_out2,sum_result[1],sum_shift[1],zero);
	mul_aid #(2) n2(sum_shift[2],c_out[2],a,b[2]);
	add u2(sum_result[3],c_out2,sum_result[2],sum_shift[2],zero);
	mul_aid #(3) n3(sum_shift[3],c_out[3],a,b[3]);
	add u3(sum_result[4],c_out2,sum_result[3],sum_shift[3],zero);
	mul_aid #(4) n4(sum_shift[4],c_out[4],a,b[4]);
	add u4(sum_result[5],c_out2,sum_result[4],sum_shift[4],zero);
	mul_aid #(5) n5(sum_shift[5],c_out[5],a,b[5]);
	add u5(sum_result[6],c_out2,sum_result[5],sum_shift[5],zero);
	mul_aid #(6) n6(sum_shift[6],c_out[6],a,b[6]);
	add u6(sum_result[7],c_out2,sum_result[6],sum_shift[6],zero);
	mul_aid #(7) n7(sum_shift[7],c_out[7],a,b[7]);
	add u7(sum_result[8],c_out2,sum_result[7],sum_shift[7],zero);
	mul_aid #(8) n8(sum_shift[8],c_out[8],a,b[8]);
	add u8(sum_result[9],c_out2,sum_result[8],sum_shift[8],zero);
	mul_aid #(9) n9(sum_shift[9],c_out[9],a,b[9]);
	add u9(sum_result[10],c_out2,sum_result[9],sum_shift[9],zero);
	mul_aid #(10) n10(sum_shift[10],c_out[10],a,b[10]);
	add u10(sum_result[11],c_out2,sum_result[10],sum_shift[10],zero);
	mul_aid #(11) n11(sum_shift[11],c_out[11],a,b[11]);
	add u11(sum_result[12],c_out2,sum_result[11],sum_shift[11],zero);
	mul_aid #(12) n12(sum_shift[12],c_out[12],a,b[12]);
	add u12(sum_result[13],c_out2,sum_result[12],sum_shift[12],zero);
	mul_aid #(13) n13(sum_shift[13],c_out[13],a,b[13]);
	add u13(sum_result[14],c_out2,sum_result[13],sum_shift[13],zero);
	mul_aid #(14) n14(sum_shift[14],c_out[14],a,b[14]);
	add u14(sum_result[15],c_out2,sum_result[14],sum_shift[14],zero);
	mul_aid #(15) n15(sum_shift[15],c_out[15],a,b[15]);
	add u15(sum,c_out2,sum_result[15],sum_shift[15],zero);

	
	
	
//to get overflow
	mul_overflow n16(overflow,c_out);


	initial	begin
		sum_init =0;
		one = 1;
		zero = 0;
	end
		




endmodule 