`timescale 1ns/1ns
module CLB_4bit(
	output c1,c2,c3,cout,
	input [3:0] ina,inb,
	input cin
	);

	wire p0,p1,p2;
	wire g0,g1,g2;

	wire c1_t;
	wire [3:0] c2_t;
	wire [7:0] c3_t;
	wire [12:0] c4_t;


	// g0,p0
	and #(7) n1(g0,ina[0],inb[0]);
	xor #(6) n2(p0,ina[0],inb[0]);
	// g1,p1
	and #(7) n3(g1,ina[1],inb[1]);
	xor #(6) n4(p1,ina[1],inb[1]);
	// g2,p2
	and #(7) n5(g2,ina[2],inb[2]);
	xor #(6) n6(p2,ina[2],inb[2]);
	// g3,p3
	and #(7) n7(g3,ina[3],inb[3]);
	xor #(6) n8(p3,ina[3],inb[3]);

	//c1
	and #(7) k1(c1_t,p0,cin);
	or #(7) k2(c1,c1_t,g0);
	
	//c2	
	and #(7) (c2_t[0],p1,p0,cin);
	and #(7) (c2_t[1],p1,g0);
	
	or #(7) (c2,g1,c2_t[1],c2_t[0]);


	//c3
	and #(7) (c3_t[0],p2,p1,p0,cin);
	and #(7) (c3_t[1],p2,p1,g0);
	and #(7) (c3_t[2],p2,g1);

	or #(7) (c3,g2,c3_t[2],c3_t[1],c3_t[0]);

	//cout
	and #(7) (c4_t[0],p3,p2,p1,p0,cin);
	and #(7) (c4_t[1],p3,p2,p1,g0);
	and #(7) (c4_t[2],p3,p2,g1);
	and #(7) (c4_t[3],p3,g2);

	or #(7) (cout,g3,c4_t[3],c4_t[2],c4_t[1],c4_t[0]);


endmodule
