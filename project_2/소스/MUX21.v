`timescale 1ns/1ns
module MUX21 #(parameter delay=0) (output reg [15:0] sum,input [15:0] in0, in1, input sel);
	
	always @(*) begin
		#delay
		case (sel) 
			1'b0:sum = in0;
			1'b1:sum = in1;
		endcase
	end

endmodule
