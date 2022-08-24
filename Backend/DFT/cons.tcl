
####################################################################################
# Constraints
# ----------------------------------------------------------------------------
#
# 0. Design Compiler variables
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

# REF CLOCK (50 MHz)
set CLK1_NAME REF_CLK
set CLK1_PER 20

# UART_RX CLOCK (115.2 KHz * 32)
set CLK2_NAME UART_RX_CLK
set CLK2_PER 271.267

#UART TX CLOCK
set CLK3_NAME UART_TX_CLK

#ALU CLOCK
set CLK4_NAME ALU_CLK

# Skew
set CLK_SETUP_SKEW 0.2
set CLK_HOLD_SKEW 0.1

#UART Division Ratio
set div_ratio 8

# CLock Transition
set CLK_RISE		0.05
set CLK_FALL		0.05


#1. Master Clocks

create_clock -name $CLK1_NAME -period $CLK1_PER -waveform "0 [expr $CLK1_PER/2]" [get_ports REF_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK1_NAME]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks $CLK1_NAME]
set_clock_transition -rise $CLK_RISE  [get_clocks $CLK1_NAME]
set_clock_transition -fall $CLK_FALL  [get_clocks $CLK1_NAME]

create_clock -name $CLK2_NAME -period $CLK2_PER -waveform "0 [expr $CLK2_PER/2]" [get_ports UART_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK2_NAME]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks $CLK2_NAME]
set_clock_transition -rise $CLK_RISE  [get_clocks $CLK2_NAME]
set_clock_transition -fall $CLK_FALL  [get_clocks $CLK2_NAME]

#2. Generated clocks

create_generated_clock -master_clock $CLK2_NAME -source [get_ports UART_CLK] \
                       -name $CLK3_NAME [get_port U0_ClkDiv/o_div_clk] \
                       -divide_by $div_ratio
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK3_NAME]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks $CLK3_NAME]
set_clock_transition -rise $CLK_RISE  [get_clocks $CLK3_NAME]
set_clock_transition -fall $CLK_FALL  [get_clocks $CLK3_NAME]

create_generated_clock -master_clock $CLK1_NAME -source [get_ports REF_CLK] \
                       -name $CLK4_NAME [get_port U0_CLK_GATE/GATED_CLK] \
                       -divide_by 1
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK4_NAME]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks $CLK4_NAME]
set_clock_transition -rise $CLK_RISE  [get_clocks $CLK4_NAME]
set_clock_transition -fall $CLK_FALL  [get_clocks $CLK4_NAME]

set_dont_touch_network UART_CLK
set_dont_touch_network REF_CLK
set_dont_touch_network U0_ClkDiv/o_div_clk
set_dont_touch_network U0_CLK_GATE/GATED_CLK
set_dont_touch_network RST
set_dont_touch_network U0_RST_SYNC_1/SYNC_RST
set_dont_touch_network U0_RST_SYNC_2/SYNC_RST


####################################################################################
           #########################################################
             #### Section 2 : Clocks Relationship ####
           #########################################################
####################################################################################

set_clock_groups -asynchronous -group [get_clocks "$CLK1_NAME $CLK4_NAME"]  \
                               -group [get_clocks "$CLK2_NAME $CLK3_NAME"]  

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################

set in_delay  [expr 0.2*$CLK2_PER]
set out_delay [expr 0.2*$CLK2_PER]

#Constrain Input Paths
set_input_delay $in_delay -clock $CLK2_NAME [get_port RX_IN]

#Constrain Output Paths
set_output_delay $out_delay -clock UART_TX_CLK [get_port TX_OUT]
set_output_delay $out_delay -clock $CLK2_NAME [get_port PARITY_ERROR]
set_output_delay $out_delay -clock $CLK2_NAME [get_port STOP_ERROR]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port RX_IN]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

set_load 0.5 [get_port TX_OUT]
set_load 0.5 [get_ports PARITY_ERROR]
set_load 0.5 [get_ports STOP_ERROR]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################

set_wire_load_model -name tsmc13_wl30 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c

####################################################################################

####################################################################################
           #########################################################
                  #### Section 8 : set_case_analysis ####
           #########################################################
####################################################################################

set_case_analysis 1 [get_port test_mode]
