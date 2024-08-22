`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2024 16:29:12
// Design Name: 
// Module Name: counters_tb
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


module counters_tb();
reg enable=1;
reg reset;
wire [3:0]count1;
wire [3:0]count2;

Counters DUT (.reset(reset), .enable(enable), .count1(count1), .count2(count2));

initial begin
    reset=0;
    enable=1;
    end

initial begin
$monitor ("[monitor] count1 is %b and count2 is %b",count1,count2);
end
 
 
endmodule
