`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2024 00:27:22
// Design Name: 
// Module Name: fsm1001
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


module fsm1001(
    input clk,reset,in,
    output reg out
    );
    
    parameter a0=0, a1=1, a10=2, a100=3, a1001=4;
    reg [2:0]PreSt,NxSt;
    always@(posedge clk) begin
        if(reset==1)begin
            out<=0;
            PreSt<=a0;
            NxSt<=a0;
        end
        else begin
            PreSt<=NxSt;
            end
     end
     always@(PreSt, in)begin
        case(PreSt)
            a0: begin
              out=0;
              if(in==1)begin
                    NxSt=a1; end
              else begin
                 NxSt=a0; end
                 end
            a1: begin
              out=0;
              if(in==1)begin
                    NxSt=a1; end
              else begin
                 NxSt=a10; end
                    end
            a10: begin
              out=0;
              if(in==1)begin
                    NxSt=a1; end
              else begin
                 NxSt=a100; end      
            end 
             a100: begin
              out=0;
              if(in==1)begin
                    NxSt=a1001; end
              else begin
                 NxSt=a0; end
                        end
                        
            a1001: begin
              out=1;
              if(in==1)begin
                    NxSt=a1; end
              else begin
                 NxSt=a0;  end
                 end
           endcase
     end    
                                         
endmodule
