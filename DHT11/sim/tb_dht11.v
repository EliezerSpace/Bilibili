`timescale 1ns / 1ns

module tb_dht11;

reg 	sys_clk;
reg 	sys_rst_n;

wire	dht11_data;

initial begin
	sys_clk = 0;
	sys_rst_n = 0;
	#100
	sys_rst_n = 1;
end

always#10 sys_clk = ~sys_clk;

dht11		dht11_inst(
	.sys_clk		(sys_clk	),
	.sys_rst_n		(sys_rst_n	),	
                     
	.dht11_data     (dht11_data )
);
endmodule