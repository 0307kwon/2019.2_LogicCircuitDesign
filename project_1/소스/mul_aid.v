module mul_aid #(parameter shift = 0) (output reg [15:0] result,output reg overflow, input [15:0] a, input b);
	reg [15:0] result_recovery;

	always @(*) begin
		overflow = 0;
		if(b == 0)
			result = 0;
		else begin
			result = a<<shift;
			result_recovery = result>>shift;
			if(result[15] == 1 || a != result_recovery) // overflow condition
				overflow = 1;
				
		end
	end
endmodule
 
	
