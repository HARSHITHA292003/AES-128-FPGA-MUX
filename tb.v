`timescale 1ns / 1ps

module AES_TB;


	// Outputs
	reg [2:0] sel;
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	AES_TOP uut (.sel(sel),.out(out));
	initial begin
       
       sel=3'b000;
       #50 sel=3'b001;
       #50 sel=3'b010;
       #50 sel=3'b011;
       #50 sel=3'b100;
       #50 sel=3'b101;
       #50 sel=3'b110;
       #50 sel=3'b111;
       #50 $finish ;
   
   	end
      
endmodule