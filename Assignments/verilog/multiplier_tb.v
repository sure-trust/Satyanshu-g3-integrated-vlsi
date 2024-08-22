`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2024 13:12:14
// Design Name: 
// Module Name: multiplier_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module multiplier_tb();
reg [2:0]A;
reg [2:0]B;
wire [5:0]out;

multiplier DUT (.A(A), .B(B), .out(out));

initial begin
    A=3'b001;
    B=3'b101;
    #10  A=3'b101;
    B=3'b111;
    #10  A=3'b001;
    B=3'b000;
  	#10  A=3'b111;
    B=3'b000;
  	#10  A=3'b111;
    B=3'b111;
    #100 $finish;
    end
    
initial begin
$monitor ("[monitor] inputs A=%b B=%b and output=%b",A,B,out);
end
endmodule
