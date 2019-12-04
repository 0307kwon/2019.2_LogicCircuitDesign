module div(output reg [15:0] result, output reg overflow, input [15:0] dividend,divisor);
	reg [15:0] dividend_temp;
	reg [15:0] divisor_temp;
	reg [4:0] loop_value;


	
	always @(*) begin
		begin
			overflow = 0;
			loop_value = 5'b10000;
			result = 0;
			dividend_temp = dividend;

			if(divisor != 0) begin
			
			while(loop_value != 0) begin
				
				if( dividend_temp>>(loop_value-1) >= divisor) begin
					dividend_temp = dividend_temp - (divisor<<(loop_value-1));
					result[loop_value-1] = 1;
				end
			
				loop_value = loop_value-1;
				
			end

			end
			else
				overflow = 1;

		end
	end
endmodule
	