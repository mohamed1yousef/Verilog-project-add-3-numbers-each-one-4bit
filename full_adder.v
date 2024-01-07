module full_adder(
	input wire in1,in2,in3,
	output reg s,c
	);

always@(*)begin
	case({in1,in2,in3})
		3'b000:begin
				s = 1'b0;
				c = 1'b0;
			  end
		3'b001:begin
				s = 1'b1;
				c = 1'b0;
			  end
		3'b010:begin
				s = 1'b1;
				c = 1'b0;
			  end
		3'b011:begin
				s = 1'b0;
				c = 1'b1;
			  end
		3'b100:begin
				s = 1'b1;
				c = 1'b0;
			  end
		3'b101:begin
				s = 1'b0;
				c = 1'b1;
			  end
		3'b110:begin
				s = 1'b0;
				c = 1'b1;
			  end
		3'b111:begin
				s = 1'b1;
				c = 1'b1;
			  end			  
endcase
end
endmodule