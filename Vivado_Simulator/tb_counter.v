`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/20 17:51:22
// Design Name: 
// Module Name: tb_counter
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


module tb_counter(

    );
    reg sys_clk;
    reg sys_rst_n;
    wire dout;
    
    initial begin
        sys_clk = 0;
        sys_rst_n = 1;
        #200
        sys_rst_n = 0;
        #100
        sys_rst_n = 1;
    end    
    always#10 sys_clk = ~sys_clk;//50M
    counter     u_counter(
    sys_clk,    //system clock
    sys_rst_n,  //system reset
   
    dout        //out flag
    );
endmodule
