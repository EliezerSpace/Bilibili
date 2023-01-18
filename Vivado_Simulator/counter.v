`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/20 17:48:17
// Design Name: 
// Module Name: counter
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


module counter(
    input   sys_clk,    //system clock
    input   sys_rst_n,  //system reset
    
    output  dout        //out flag
    );
    
    reg [6:0] cnt;
    always@(posedge sys_clk)begin
        if(sys_rst_n == 1'b0)begin
            cnt <= 7'd0;
        end
        else begin
            if(cnt == 7'd99)
                cnt <= 7'd0;
            else
                cnt <= cnt + 1'b1;
        end
    end
    
    assign dout = (cnt == 7'd99) ? 1'b1 : 1'b0;
endmodule
