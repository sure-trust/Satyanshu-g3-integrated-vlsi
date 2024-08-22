`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2024 12:19:25
// Design Name: 
// Module Name: multiplier
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

module fulladder(input[2:0]a,input [2:0]b,
                   output  [2:0]sum, output cout);
 wire cin=0;                
  assign {cout, sum}= a+b+cin;
endmodule

module multiplier(input [2:0]A, input [2:0]B, output [5:0]out);
assign out[0]= A[0] & B[0];  //p0 done

//preparing ip for addr1
wire[2:0]addr1A;
wire[2:0]addr1B;
wire[2:0]addr1out; ///out from addr1
wire addr1cout;   //out from addr1

assign addr1A[0]= A[0] & B[1];
assign addr1A[1]= A[1] & B[1];
assign addr1A[2]= A[2] & B[1];


assign addr1B[0]= A[1] & B[0];
assign addr1B[1]= A[2] & B[0];
assign addr1B[2]=0;

fulladder d0(.a(addr1A), .b(addr1B), .sum(addr1out), .cout(addr1cout));

assign out[1]=addr1out[0];  //p1 done

//preparinf for addr2
wire[2:0]addr2A;
wire[2:0]addr2B;
wire [2:0]addr2out;
wire addr2cout;

assign addr2A[0]= A[0] & B[2];
assign addr2A[1]= A[1] & B[2];
assign addr2A[2]= A[2] & B[2];


assign addr2B[0]= addr1out[1];
assign addr2B[1]= addr1out[2];
assign addr2B[2]=addr1cout;

fulladder d1(.a(addr2A), .b(addr2B), .sum(addr2out), .cout(addr2cout));

assign out[2]=addr2out[0];
assign out[3]=addr2out[1];
assign out[4]=addr2out[2];
assign out[5]=addr2cout;

endmodule
