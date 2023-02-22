module part1(MuxSelect, Input, Out); 
	input [2:0] MuxSelect; 
input [6:0] Input; 
	output reg out; 

	always @(*)
	begin 
		case(MuxSelect[2:0])
		3’b000: Out= Input[0]; 
		3’b001: Out = Input[1]; 
		3’b010: Out = Input[2]; 
		3’b011: Out= Input[3]; 
		3’b100: Out = Input[4]; 
		3’b101:Out = Input[5]; 
		3’b110: Out = Input[6]; 
		default: Out= Input[0]; 
		endcase;
	end 
endmodule

module mux7t01(SW,LEDR); 
input [9:0] SW; 
	input [0:0] LEDR; 
	part1 u0 (SW[9:7], SW[6:0], LEDR[0]); 
endmodule
