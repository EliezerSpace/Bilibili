
#********************************************
#				clock 50m
#********************************************

set_location_assignment PIN_E1 -to sys_clk

#********************************************
#				key
#********************************************

set_location_assignment PIN_M15 -to sys_rst_n
#set_location_assignment PIN_M2 -to key1
#set_location_assignment PIN_M1 -to key2
#set_location_assignment PIN_E15 -to key3
#set_location_assignment PIN_E16 -to key4

#********************************************
#				led
#********************************************

#set_location_assignment PIN_L7  -to led1
#set_location_assignment PIN_M6  -to led2
#set_location_assignment PIN_P3  -to led3
#set_location_assignment PIN_N3  -to led4

#********************************************
#				uart
#********************************************

#set_location_assignment PIN_N6 -to uart_rx
#set_location_assignment PIN_N5 -to uart_tx

#********************************************
#				iic
#********************************************

set_location_assignment PIN_P15 -to i2c_scl
set_location_assignment PIN_N14 -to i2c_sda

#********************************************
#				spi flash
#********************************************

#set_location_assignment PIN_H1 -to dclk
#set_location_assignment PIN_H2 -to miso
#set_location_assignment PIN_C1 -to mosi
#set_location_assignment PIN_D2 -to ncs

#********************************************
#				buzzer
#********************************************

#set_location_assignment PIN_J11 -to buzzer

#********************************************
#				SD card
#********************************************

#set_location_assignment PIN_J12 -to SD_DCLK
#set_location_assignment PIN_J14 -to SD_CMD
#set_location_assignment PIN_J16 -to SD_SD_D0
#set_location_assignment PIN_J15 -to SD_SD_D1
#set_location_assignment PIN_L12 -to SD_D2
#set_location_assignment PIN_K12 -to SD_D3

#********************************************
#				SDRAM
#********************************************

#set_location_assignment PIN_M11 -to sdram_addr[12]
#set_location_assignment PIN_N12 -to sdram_addr[11]
#set_location_assignment PIN_T15 -to sdram_addr[10]
#set_location_assignment PIN_P9 -to sdram_addr[9]
#set_location_assignment PIN_T10 -to sdram_addr[8]
#set_location_assignment PIN_T11 -to sdram_addr[7]
#set_location_assignment PIN_T12 -to sdram_addr[6]
#set_location_assignment PIN_T13 -to sdram_addr[5]
#set_location_assignment PIN_T14 -to sdram_addr[4]
#set_location_assignment PIN_N11 -to sdram_addr[3]
#set_location_assignment PIN_N9 -to sdram_addr[2]
#set_location_assignment PIN_P14 -to sdram_addr[1]
#set_location_assignment PIN_P11 -to sdram_addr[0]
#set_location_assignment PIN_R13 -to sdram_ba[1]
#set_location_assignment PIN_R14 -to sdram_ba[0]
#set_location_assignment PIN_R10 -to sdram_cas_n
#set_location_assignment PIN_R9 -to sdram_cke
#set_location_assignment PIN_R4 -to sdram_clk
#set_location_assignment PIN_R12 -to sdram_cs_n
#set_location_assignment PIN_T2 -to sdram_dq[15]
#set_location_assignment PIN_T3 -to sdram_dq[14]
#set_location_assignment PIN_T4 -to sdram_dq[13]
#set_location_assignment PIN_T5 -to sdram_dq[12]
#set_location_assignment PIN_T6 -to sdram_dq[11]
#set_location_assignment PIN_T7 -to sdram_dq[10]
#set_location_assignment PIN_T8 -to sdram_dq[9]
#set_location_assignment PIN_P8 -to sdram_dq[8]
#set_location_assignment PIN_N8 -to sdram_dq[7]
#set_location_assignment PIN_R8 -to sdram_dq[6]
#set_location_assignment PIN_M8 -to sdram_dq[5]
#set_location_assignment PIN_R7 -to sdram_dq[4]
#set_location_assignment PIN_R6 -to sdram_dq[3]
#set_location_assignment PIN_R5 -to sdram_dq[2]
#set_location_assignment PIN_T9 -to sdram_dq[1]
#set_location_assignment PIN_R3 -to sdram_dq[0]
#set_location_assignment PIN_M9 -to sdram_dqm[1]
#set_location_assignment PIN_M10 -to sdram_dqm[0]
#set_location_assignment PIN_R11 -to sdram_ras_n
#set_location_assignment PIN_L9 -to sdram_we_n

#********************************************
#				OV5640
#********************************************

#set_location_assignment PIN_D15 -to cmos_24M
#set_location_assignment PIN_M16 -to cmos_pclk
#set_location_assignment PIN_F16 -to cmos_rst_n
#set_location_assignment PIN_J13 -to cmos_hsync
#set_location_assignment PIN_C16 -to cmos_vsync
#set_location_assignment PIN_G11 -to cmos_pwdn
#set_location_assignment PIN_P15 -to cmos_scl
#set_location_assignment PIN_N14 -to cmos_sda
#set_location_assignment PIN_L13 -to cmos_db[7]
#set_location_assignment PIN_F13 -to cmos_db[6]
#set_location_assignment PIN_B16 -to cmos_db[5]
#set_location_assignment PIN_C15 -to cmos_db[4]
#set_location_assignment PIN_D16 -to cmos_db[3]
#set_location_assignment PIN_F14 -to cmos_db[2]
#set_location_assignment PIN_F15 -to cmos_db[1]
#set_location_assignment PIN_G15 -to cmos_db[0]

#********************************************
#				SEGMENT
#********************************************

set_location_assignment PIN_L11 -to oe
set_location_assignment PIN_B1 -to shcp
set_location_assignment PIN_R1 -to ds
set_location_assignment PIN_K9 -to stcp

#********************************************
#				VGA
#********************************************

#set_location_assignment PIN_D1 -to h_sync
#set_location_assignment PIN_C2 -C2 v_sync
#set_location_assignment PIN_A5 -to rgb_data[15]
#set_location_assignment PIN_E6 -to rgb_data[14]
#set_location_assignment PIN_E7 -to rgb_data[13]
#set_location_assignment PIN_B8 -to rgb_data[12]
#set_location_assignment PIN_A8 -to rgb_data[11]
#set_location_assignment PIN_F8 -to rgb_data[10]
#set_location_assignment PIN_E8 -to rgb_data[9]
#set_location_assignment PIN_B7 -to rgb_data[8]
#set_location_assignment PIN_A7 -to rgb_data[7]
#set_location_assignment PIN_F7 -to rgb_data[6]
#set_location_assignment PIN_F6 -to rgb_data[5]
#set_location_assignment PIN_B6 -to rgb_data[4]
#set_location_assignment PIN_A6 -to rgb_data[3]
#set_location_assignment PIN_B5 -to rgb_data[2]
#set_location_assignment PIN_A2 -to rgb_data[1]
#set_location_assignment PIN_B4 -to rgb_data[0]

#********************************************
#				HDMI
#********************************************

#set_location_assignment PIN_P16 -to hdmi_clk_n
#set_location_assignment PIN_R16 -to hdmi_clk_p
#set_location_assignment PIN_K16 -to hdmi_red_n
#set_location_assignment PIN_K15 -to hdmi_red_p
#set_location_assignment PIN_L16 -to hdmi_green_n
#set_location_assignment PIN_L15 -to hdmi_green_p
#set_location_assignment PIN_N16 -to hdmi_blue_n
#set_location_assignment PIN_N15 -to hdmi_blue_p
#set_location_assignment PIN_P15 -to ddc_scl
#set_location_assignment PIN_N14 -to dda_sda







