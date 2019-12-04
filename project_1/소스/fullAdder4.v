module fullAdder4(output [3:0] sum,output overflow,input [3:0] a,b, input c_in);
  wire [3:1] c;
 
  fullAdder1 n1(sum[0], c[1], a[0], b[0], c_in);
  fullAdder1 n2(sum[1], c[2], a[1], b[1], c[1]);
  fullAdder1 n3(sum[2], c[3], a[2], b[2], c[2]);
  fullAdder1 n4(sum[3], overflow, a[3], b[3], c[3]);
  
endmodule 