`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 22.08.2024 01:12:41
//// Design Name: 
//// Module Name: fsm1001_tb
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////


module fsm1001_tb();
reg clk,reset,in;
wire out;

fsm1001 DUT(.clk(clk), .reset(reset), .in(in), .out(out));

initial begin
    clk=1'b0;
    reset=1'b1;
    in = 1'b0;
    #10 reset=1'b0;
    end
 initial forever begin
    #5 clk= ~clk;
    end
 initial begin
    $monitor ("[monitor] time=%t input=%b output=%b",$time,in, out);
    $dumpfile("fsm.vcd");
    $dumpvars;
    end
    
 initial begin //giving inputs to the fsm
    #20 in=0;
    #10 in=1;
    #10 in=0;
    #10 in=0;
    #10 in=1;
    #10 in=0;
    #20 $finish;
    end
endmodule

