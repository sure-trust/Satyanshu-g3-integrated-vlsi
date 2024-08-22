`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2024 11:12:04
// Design Name: 
// Module Name: ParityG4_tb
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


module ParityG4_tb();
reg [3:0]in;
reg [4:0]out;

ParityG4bit DUT (.in(in), .out(out));

initial begin
    #10 in=4'b0010;
    #10 in=4'b1101;
    #10 in=4'b1111;
    #10 in=4'b1011;
    #10 in=4'b0001;
    #10 in=4'b1100;
    #100 $finish;
    end
 initial begin
    $monitor ("[monitor] in=%b out=%b",in,out);
    end
endmodule
