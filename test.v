`timescale 1ns/1ps
module test ();
	reg [3:0] x_tb,y_tb,z_tb;
	wire [4:0] s_top_tb;
	wire c_top_tb;
	
top t0(
	.x(x_tb),
	.y(y_tb),
	.z(z_tb),
	.s_top(s_top_tb),
	.c_top(c_top_tb)
	);
integer x=0;

initial begin

 for(x=0;x<10;x=x+1)begin
	x_tb = $random;
	y_tb = $random;
	z_tb = $random;
	#5;
 end

 /*	x_tb = 'd1;
	y_tb = 'd2;
	z_tb = 'd3;
	*/
end
endmodule
	