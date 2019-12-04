module mul_overflow(output reg overflow, input [15:0] c_out);
	always @(*) begin
		if(c_out == 0)
			overflow = 0;
		else
			overflow = 1;
	end
endmodule

