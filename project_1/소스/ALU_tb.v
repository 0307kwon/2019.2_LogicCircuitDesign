`timescale 1ns/1ns

module ALU_tb();
	reg [15:0] ina,inb;
	reg [1:0] sel;
	wire [15:0] out2138;
	wire overflow;


	ALU n1(out2138,overflow,ina,inb,sel);

	initial begin
		// + (plus) 
		// regular result 
		ina = $random; ina[15] = 0; ina = ina%256;
		inb = $random; inb[15] = 0; inb = inb%256;
		sel = 2'b00;
	end

	always begin
		// + (plus) 
		// overflow
		#1 ina = 16'b0111_1111_1111_1111;
		inb = $random; inb[15] = 0;
		// overflow
		#1 ina = $random;
		inb = 16'b0111_1111_1111_1111; inb[15] = 0;
		// regular result 
		#1 ina = $random; ina[15] = 0; ina = ina%256;
		inb = $random; inb[15] = 0; inb = inb%256;
		// regular result 
		#1 ina = $random; ina[15] = 0; ina = ina%256;
		inb = $random; inb[15] = 0; inb = inb%256;
		// regular result 
		#1 ina = $random; ina[15] = 0; ina = ina%256;
		inb = $random; inb[15] = 0; inb = inb%256;
		// regular result 
		#1 ina = $random; ina[15] = 0; ina = ina%256;
		inb = $random; inb[15] = 0; inb = inb%256;
		// regular result 
		#1 ina = $random; ina[15] = 0; ina = ina%256;
		inb = $random; inb[15] = 0; inb = inb%256;
		// regular result 
		#1 ina = $random; ina[15] = 0; ina = ina%256;
		inb = $random; inb[15] = 0; inb = inb%256;
		// regular result 
		#1 ina = $random; ina[15] = 0; ina = ina%256;
		inb = $random; inb[15] = 0; inb = inb%256;
		


		// - (minus)
		// big - small
		#1 ina = $random; ina[15]=0; ina[14] = 1;
		inb = $random; inb[15]=0; inb[14] = 0;
		sel = 2'b01;
		// big - small
		#1 ina = $random; ina[15]=0; ina[14] = 1;
		inb = $random; inb[15]=0; inb[14] = 0;
		// big - small
		#1 ina = $random; ina[15]=0; ina[14] = 1;
		inb = $random; inb[15]=0; inb[14] = 0;
		// big - small
		#1 ina = $random; ina[15]=0; ina[14] = 1;
		inb = $random; inb[15]=0; inb[14] = 0;
		// big - small
		#1 ina = $random; ina[15]=0; ina[14] = 1;
		inb = $random; inb[15]=0; inb[14] = 0;

		// small - big
		#1 ina = $random; ina[15]=0; ina[14] = 0;
		inb = $random; inb[15]=0; inb[14] = 1;
		// small - big
		#1 ina = $random; ina[15]=0; ina[14] = 0;
		inb = $random; inb[15]=0; inb[14] = 1;
		// small - big
		#1 ina = $random; ina[15]=0; ina[14] = 0;
		inb = $random; inb[15]=0; inb[14] = 1;
		// small - big
		#1 ina = $random; ina[15]=0; ina[14] = 0;
		inb = $random; inb[15]=0; inb[14] = 1;
		// small - big
		#1 ina = $random; ina[15]=0; ina[14] = 0;
		inb = $random; inb[15]=0; inb[14] = 1;

		// * (multiply)
		// regular result
		#1 ina = $random; ina[15] = 0; ina = ina%256;
		inb = $random; inb[15] = 0; inb = inb%130;
		sel = 2'b10;
		// regular result
		#1 ina = $random; ina[15] = 0; ina = ina%256;
		inb = $random; inb[15] = 0; inb = inb%130;
		// regular result
		#1 ina = $random; ina[15] = 0; ina = ina%256;
		inb = $random; inb[15] = 0; inb = inb%130;
		// regular result
		#1 ina = $random; ina[15] = 0; ina = ina%256;
		inb = $random; inb[15] = 0; inb = inb%130;
		// regular result
		#1 ina = $random; ina[15] = 0; ina = ina%256;
		inb = $random; inb[15] = 0; inb = inb%130;
		// regular result
		#1 ina = $random; ina[15] = 0; ina = ina%256;
		inb = $random; inb[15] = 0; inb = inb%130;
		// regular result
		#1 ina = $random; ina[15] = 0; ina = ina%256;
		inb = $random; inb[15] = 0; inb = inb%130;
		// overflow
		#1 ina = 16'b0111_1111_1111_1111;
		inb = $random; inb[15] = 0;
		// overflow
		#1 ina = $random;
		inb = 16'b0111_1111_1111_1111; inb[15] = 0;
		// multiply 0
		#1 ina = 0;
		inb = $random; inb[15] = 0;


		// /(divide)
		// big / small
		#1 ina = $random; ina[15] =0; ina[14] =1;
		inb = $random; inb[15] = 0; inb = inb%256;
		sel = 2'b11;
		// big / small
		#1 ina = $random; ina[15] =0; ina[14] =1;
		inb = $random; inb[15] = 0; inb = inb%256;
		// big / small
		#1 ina = $random; ina[15] =0; ina[14] =1;
		inb = $random; inb[15] = 0; inb = inb%256;
		// big / small
		#1 ina = $random; ina[15] =0; ina[14] =1;
		inb = $random; inb[15] = 0; inb = inb%256;
		// big / small
		#1 ina = $random; ina[15] =0; ina[14] =1;
		inb = $random; inb[15] = 0; inb = inb%256;
		// big / small
		#1 ina = $random; ina[15] =0; ina[14] =1;
		inb = $random; inb[15] = 0; inb = inb%256;
		// small / big
		#1 ina = $random; ina[15] = 0; ina = ina%256;
		inb = $random; inb[15] = 0; inb[14] = 1;
		// small / big
		#1 ina = $random; ina[15] = 0; ina = ina%256;
		inb = $random; inb[15] = 0; inb[14] = 1;
		// divide by 0
		#1 ina = $random; ina[15] = 0;
		inb = 0;
		// divide by 0
		#1 ina = $random; ina[15] = 0;
		inb = 0;

		// + (plus) 
		// regular result 
		#1 ina = $random; ina[15] = 0; ina = ina%256;
		inb = $random; inb[15] = 0; inb = inb%256;
		sel = 2'b00;

	end

	



endmodule
