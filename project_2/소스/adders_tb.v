`timescale 1ns/1ns
module adders_tb();
	reg [15:0] in1, in2;
	reg cin1;
	wire [15:0] sum2138_1,sum2138_2,sum2138_3,sum2138_4;
	wire cout1, cout2, cout3, cout4;

	RCA u1(sum2138_1, cout1, in1, in2, cin1);
	CLA u2(sum2138_2, cout2, in1, in2, cin1);
	CSA_1 u3(sum2138_3, cout3, in1, in2, cin1);
	CSA_2 u4(sum2138_4, cout4, in1, in2, cin1);

	initial begin
		    in1 = 0; in2 = 0; cin1 = 0;
		#50 in1[14:0] = $random; in2[14:0] = $random;
		#50 in1[14:0] = $random; in2[14:0] = $random;
		#50 in1[14:0] = $random; in2[14:0] = $random;
		#50 in1 = 16'b1010_1010_1010_1010; in2 = 16'b0101_0101_0101_0101;
		#250 cin1 = 1;
	end

endmodule 