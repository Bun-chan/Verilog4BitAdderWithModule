//2022-11-22
//Verilog 4 bit adder using a module.


module Adder(A, B, Cin, Sum, Cout);
	input A, B, Cin;
	output reg Sum, Cout;
	always @(A or B or Cin) begin
	Cout = (A & B) | (A & Cin) | (B & Cin);
	Sum = A ^ B ^ Cin;
	end
endmodule

module FullAdd4(A, B, Cin, Sum, Cout);                	
    input [3:0] A, B; 
    input Cin; 			
    output reg [3:0] Sum;
    output  Cout;
	 
	 wire Cout0, Cout1, Cout2, Cout3;
	 wire Sout0, Sout1, Sout2, Sout3;
	 
	 Adder add0(A[0], B[0], Cin, Sout0, Cout0);
	 Adder add1(A[1], B[1], Cout0, Sout1, Cout1);
	 Adder add2(A[2], B[2], Cout1, Sout2, Cout2);
	 Adder add3(A[3], B[3], Cout2, Sout3, Cout);
//	 assign sum = {Sout3, Sout2, Sout1, Sout0};
	 
	 always @(Sout0, Sout1, Sout2, Sout3) begin
	 Sum = {Sout3, Sout2, Sout1, Sout0};
	 end
	 
	 
	 
	 
	 
	
endmodule
