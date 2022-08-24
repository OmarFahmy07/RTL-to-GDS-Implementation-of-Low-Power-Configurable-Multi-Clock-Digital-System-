
############################  Search PATH ################################

lappend search_path /home/IC/Projects/System/Backend/std_cells/libs
lappend search_path /home/IC/Projects/System/RTL

########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

######################### Formality Setup File ###########################

set synopsys_auto_setup true

set_svf "../../DFT/$top_module.svf"


####################### Read Reference tech libs ########################
 

set SSLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

###################  Read Reference Design Files ######################## 

read_verilog -container Ref "ALU.v"
read_verilog -container Ref "ClkDiv.v"
read_verilog -container Ref "CLK_GATE.v"
read_verilog -container Ref "pulse_generator.v"
read_verilog -container Ref "bit_synchronizer.v"
read_verilog -container Ref "data_synchronizer.v"
read_verilog -container Ref "Reg_File.v"
read_verilog -container Ref "RST_SYNC.v"
read_verilog -container Ref "SYS_CTRL.v"
read_verilog -container Ref "data_sampling.v"
read_verilog -container Ref "deserializer.v"
read_verilog -container Ref "edge_bit_counter.v"
read_verilog -container Ref "parity_check.v"
read_verilog -container Ref "stop_check.v"
read_verilog -container Ref "start_check.v"
read_verilog -container Ref "UART_Rx.v"
read_verilog -container Ref "UART_Rx_FSM.v"
read_verilog -container Ref "MUX_8x1.v"
read_verilog -container Ref "Parity_Calc.v"
read_verilog -container Ref "serializer.v"
read_verilog -container Ref "UART_Tx.v"
read_verilog -container Ref "UART_Tx_FSM.v"
read_verilog -container Ref "UART.v"
read_verilog -container Ref "SYS_TOP.v"

######################## set the top Reference Design ######################## 

set_reference_design SYS_TOP
set_top SYS_TOP

####################### Read Implementation tech libs ######################## 

read_db -container Imp [list $SSLIB $TTLIB $FFLIB]

#################### Read Implementation Design Files ######################## 

read_verilog -container Imp -netlist "/home/IC/Projects/System/Backend/DFT/netlists/SYS_TOP.v"

####################  set the top Implementation Design ######################

set_implementation_design SYS_TOP
set_top SYS_TOP

############################### Don't verify #################################

# do not verify scan out ports as compare points as it exists only after synthesis and not in the RTL

#scan_out
set_dont_verify_points -type port Imp:/WORK/*/SO

############################### contants #####################################

# all atpg enable(test_mode, scan_enable) are zero during formal compare

#test_mode
set_constant Imp:/WORK/*/test_mode 0

#scan_enable
set_constant Imp:/WORK/*/SE 0

########################### matching Compare points ##########################

match

################################# verify #####################################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"


start_gui
