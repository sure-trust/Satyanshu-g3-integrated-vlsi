`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2024 15:15:28
// Design Name: 
// Module Name: Counters
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


module Counters(input reset,enable, output reg[3:0]count1, output reg[3:0]count2);
reg clk=0;
 always @(posedge enable)
    #50 clk=~clk;
    
    
 //up counter- count1
always@(posedge clk) begin
    if(reset==1 | count1==4'b1111)
        count1=0;
    else
        count1=count1+1;
    end
 
 //down counter-count2
always@(posedge clk)begin
    if(reset==1 | count2==4'b0000)
        count2=4'b1111;
    else if(count1==4'b1100)
        count2=count2-4'b0001;    
    else
        count2=count2+0;  
       end
   
    
endmodule



