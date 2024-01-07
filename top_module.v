module top(
	input wire [3:0] x,y,z,
	output wire [4:0] s_top,
	output wire c_top
	);

wire s1,s2,s3,c0,c1,c2,c3,c4,c5,c6;

full_adder f0(
.in1(x[0]),
.in2(y[0]),	
.in3(z[0]),	
.s(s_top[0]),
.c(c0)
);

full_adder f1(
.in1(x[1]),
.in2(y[1]),	
.in3(z[1]),	
.s(s1),
.c(c1)
);
full_adder f2(
.in1(x[2]),
.in2(y[2]),	
.in3(z[2]),	
.s(s2),
.c(c2)
);
full_adder f3(
.in1(x[3]),
.in2(y[3]),	
.in3(z[3]),	
.s(s3),
.c(c3)
);
full_adder f4(
.in1(0),
.in2(c0),	
.in3(s1),	
.s(s_top[1]),
.c(c4)
);
full_adder f5(
.in1(c4),
.in2(c1),	
.in3(s2),	
.s(s_top[2]),
.c(c5)
);
full_adder f6(
.in1(c5),
.in2(c2),	
.in3(s3),	
.s(s_top[3]),
.c(c6)
);
full_adder f7(
.in1(c6),
.in2(c3),	
.in3(0),	
.s(s_top[4]),
.c(c_top)
);
endmodule			