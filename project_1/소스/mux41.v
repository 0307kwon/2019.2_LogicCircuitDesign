module mux41(output reg[15:0] out2138, output reg overflow , input [16:0] y1,y2,y3,y4, input [1:0] sel); 
	
	always @(*) begin
		case(sel)
			2'b00:begin
				out2138 = y1[15:0];
				overflow = y1[16];
			end
			2'b01:begin
				out2138 = y2[15:0];
				overflow = y2[16];
			end
			2'b10:begin
				out2138 = y3[15:0];
				overflow = y3[16];
			end
			2'b11:begin
				out2138 = y4[15:0];
				overflow = y4[16];
			end
		endcase
	end
endmodule

