`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2024 10:58:57
// Design Name: 
// Module Name: ParityG4bit
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


module ParityG4bit( input [3:0]in,
                    output wire [4:0]out);
 wire parity;                               
 assign parity= ^in;
 assign out={parity,in};
 
endmodule
