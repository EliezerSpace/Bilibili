
module seg_dynamic(
	input	clk,
	input	rst_n,
	
	input	[4:0]	dis1,
	input	[4:0]	dis2,
	input	[4:0]   dis3,
	input	[4:0]   dis4,
	input	[4:0]   dis5,
	input	[4:0]   dis6,
	
	output	reg [7:0]	seg_data,
	output	reg [5:0]	sel
);
	
parameter point = 8'h7f;
parameter CNT_MAX_1MS = 16'd50_000;
reg 	[15:0]		cnt_1ms;
reg 	[2:0]		sel_bit;
reg 	[4:0]		decoder_data;


always@(posedge clk or negedge rst_n)begin
	if(~rst_n)begin
		cnt_1ms <= 16'd0;
	end
	else begin
		if(cnt_1ms == CNT_MAX_1MS - 1)begin
			cnt_1ms <= 16'd0;
		end
		else begin
			cnt_1ms <= cnt_1ms + 1'b1;
		end
	end
end
always@(posedge clk or negedge rst_n)begin
	if(~rst_n)begin
		sel_bit <= 3'd0;
	end
	else begin
		if(cnt_1ms == CNT_MAX_1MS - 1)begin
			if(sel_bit == 3'd5)begin
				sel_bit <= 3'd0;
			end
			else begin
				sel_bit <= sel_bit + 3'd1;
			end
		end
		else begin
			sel_bit <= sel_bit;
		end
	end
end
always@(posedge clk or negedge rst_n)begin
	if(~rst_n)begin
		sel <= 6'b0000_00;
	end
	else begin
		case(sel_bit)
			3'd0:begin
				sel <= 6'b1000_00;
			end
			3'd1:begin
				sel <= 6'b0100_00;
			end
			3'd2:begin
				sel <= 6'b0010_00;
			end
			3'd3:begin
				sel <= 6'b0001_00;
			end
			3'd4:begin
				sel <= 6'b0000_10;
			end
			3'd5:begin
				sel <= 6'b0000_01;
			end
			default:begin
				sel <= 6'b0000_00;
			end
		endcase
	end
end
always@(posedge clk or negedge rst_n)begin
	if(~rst_n)begin
		decoder_data <= 5'd0;
	end
	else begin
		case(sel_bit)
			3'd0:begin
				decoder_data <= dis1;
			end                 
			3'd1:begin          
				decoder_data <= dis2;
			end                 
			3'd2:begin          
				decoder_data <= dis3;
			end
			3'd3:begin
				decoder_data <= dis4;
			end
			3'd4:begin
				decoder_data <= dis5;
			end
			3'd5:begin
				decoder_data <= dis6;
			end
			default:begin
				decoder_data <= 5'd0;
			end
		endcase
	end
end
always@(*)begin
	case(decoder_data)
		5'd0:begin
			seg_data = 8'hc0;
		end
		5'd1:begin                   
			seg_data = 8'hf9;        
		end                          
		5'd2:begin                   
			seg_data = 8'ha4;        
		end                          
		5'd3:begin                   
			seg_data = 8'hb0;        
		end                          
		5'd4:begin
			seg_data = 8'h99;
		end
		5'd5:begin
			seg_data = 8'h92;
		end
		5'd6:begin
			seg_data = 8'h82;
		end
		5'd7:begin
			seg_data = 8'hf8;
		end
		5'd8:begin
			seg_data = 8'h80;
		end
		5'd9:begin
			seg_data = 8'h90;
		end
	//point 0-9
		5'd10:begin
			seg_data = 8'hc0 & point;
		end
		5'd11:begin                   
			seg_data = 8'hf9 & point;        
		end                          
		5'd12:begin                   
			seg_data = 8'ha4 & point;        
		end                          
		5'd13:begin                   
			seg_data = 8'hb0 & point;        
		end                          
		5'd14:begin
			seg_data = 8'h99 & point;
		end
		5'd15:begin
			seg_data = 8'h92 & point;
		end
		5'd16:begin
			seg_data = 8'h82 & point;
		end
		5'd17:begin
			seg_data = 8'hf8 & point;
		end
		5'd18:begin
			seg_data = 8'h80 & point;
		end
		5'd19:begin
			seg_data = 8'h90 & point;
		end
	//"-"
		5'd20:begin
			seg_data = 8'hbf;//"-"
		end	
		5'd21:begin
			seg_data = 8'hc6;//"C"
		end	
		5'd22:begin
			seg_data = 8'h89;//"H"
		end	
		default:begin
			seg_data = 8'hff;//dark
		end
	endcase
end
endmodule 