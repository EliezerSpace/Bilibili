module dht11_top(
	input	sys_clk		,
	input	sys_rst_n	,
	
	inout	dht11_data	,
	
	input	key			,//0:humidity 1:temperature 
	output	stcp        ,
	output  shcp        ,
	output  ds          ,
	output  oe          
);

reg	[4:0] dis1;
reg	[4:0] dis2;
reg	[4:0] dis3;
reg	[4:0] dis4;
reg	[4:0] dis5;
reg	[4:0] dis6;

wire	[5:0]	sel;
wire	[7:0]	data;
wire	[39:0]	t_h_data;

wire	[7:0]	temp_int = t_h_data[23:16];
wire	[7:0]	temp_dec = t_h_data[15:8] * 10;
wire	[7:0]	humi_int = t_h_data[39:32];
wire	[7:0]	humi_dec = t_h_data[31:24] * 10;

always@(*)begin
	if(key)begin
		dis1 <= 21;
		dis2 <=	20;
		dis3 <= temp_int/10;
		dis4 <= temp_int%10 + 10;//display the point
		dis5 <= temp_dec/10;
		dis6 <= temp_dec%10;
	end
	else begin
		dis1 <= 22;
		dis2 <= 20;
		dis3 <= humi_int/10;
		dis4 <= humi_int%10 + 10;//display the point
		dis5 <= humi_dec/10;
		dis6 <= humi_dec%10;
	end
end
dht11			dht11_inst
(
	.sys_clk		(sys_clk),
	.sys_rst_n		(sys_rst_n),

	.dht11_data		(dht11_data),
	.t_h_data       (t_h_data)
);
hc595_ctrl		hc595_ctrl_inst
(
    .sys_clk     	(sys_clk),   //系统时钟，频率50MHz
    .sys_rst_n   	(sys_rst_n),   //复位信号，低有效
    .sel         	(sel),   //数码管位选信号
    .seg         	(data),   //数码管段选信号

    .stcp        	(stcp),   //数据存储器时钟
    .shcp        	(shcp),   //移位寄存器时钟
    .ds          	(ds  ),   //串行数据输入
    .oe          	(oe  )    //使能信号，低有效
);
seg_dynamic		seg_dynamic_inst
(
	.clk			(sys_clk),
	.rst_n			(sys_rst_n),

	.dis1			(dis1),
	.dis2			(dis2),
	.dis3			(dis3),
	.dis4			(dis4),
	.dis5			(dis5),
	.dis6			(dis6),

	.seg_data		(data),
	.sel			(sel)
);
endmodule