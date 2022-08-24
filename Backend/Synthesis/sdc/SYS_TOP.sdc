###################################################################

# Created by write_sdc on Sun Aug 21 23:22:59 2022

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_wire_load_model -name tsmc13_wl30 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports RX_IN]
set_load -pin_load 0.5 [get_ports TX_OUT]
set_load -pin_load 0.5 [get_ports PARITY_ERROR]
set_load -pin_load 0.5 [get_ports STOP_ERROR]
create_clock [get_ports REF_CLK]  -period 20  -waveform {0 10}
set_clock_uncertainty -setup 0.2  [get_clocks REF_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks REF_CLK]
set_clock_transition -max -rise 0.05 [get_clocks REF_CLK]
set_clock_transition -min -rise 0.05 [get_clocks REF_CLK]
set_clock_transition -max -fall 0.05 [get_clocks REF_CLK]
set_clock_transition -min -fall 0.05 [get_clocks REF_CLK]
create_clock [get_ports UART_CLK]  -name UART_RX_CLK  -period 271.267  -waveform {0 135.633}
set_clock_uncertainty -setup 0.2  [get_clocks UART_RX_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks UART_RX_CLK]
set_clock_transition -max -rise 0.05 [get_clocks UART_RX_CLK]
set_clock_transition -min -rise 0.05 [get_clocks UART_RX_CLK]
set_clock_transition -max -fall 0.05 [get_clocks UART_RX_CLK]
set_clock_transition -min -fall 0.05 [get_clocks UART_RX_CLK]
create_generated_clock [get_pins U0_ClkDiv/o_div_clk]  -name UART_TX_CLK  -source [get_ports UART_CLK]  -master_clock UART_RX_CLK  -divide_by 8  -add
set_clock_uncertainty -setup 0.2  [get_clocks UART_TX_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks UART_TX_CLK]
set_clock_transition -max -rise 0.05 [get_clocks UART_TX_CLK]
set_clock_transition -min -rise 0.05 [get_clocks UART_TX_CLK]
set_clock_transition -max -fall 0.05 [get_clocks UART_TX_CLK]
set_clock_transition -min -fall 0.05 [get_clocks UART_TX_CLK]
create_generated_clock [get_pins U0_CLK_GATE/GATED_CLK]  -name ALU_CLK  -source [get_ports REF_CLK]  -master_clock REF_CLK  -divide_by 1  -add
set_clock_uncertainty -setup 0.2  [get_clocks ALU_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks ALU_CLK]
set_clock_transition -max -rise 0.05 [get_clocks ALU_CLK]
set_clock_transition -min -rise 0.05 [get_clocks ALU_CLK]
set_clock_transition -max -fall 0.05 [get_clocks ALU_CLK]
set_clock_transition -min -fall 0.05 [get_clocks ALU_CLK]
set_input_delay -clock UART_RX_CLK  54.2534  [get_ports RX_IN]
set_output_delay -clock UART_TX_CLK  54.2534  [get_ports TX_OUT]
set_output_delay -clock UART_RX_CLK  54.2534  [get_ports PARITY_ERROR]
set_output_delay -clock UART_RX_CLK  54.2534  [get_ports STOP_ERROR]
set_clock_groups -asynchronous -name REF_CLK_1 -group [list [get_clocks REF_CLK] [get_clocks ALU_CLK]] -group [list [get_clocks UART_RX_CLK] [get_clocks UART_TX_CLK]]
