
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

############################# Formality Setup File ##########################
                                                   
set_svf $top_module.svf

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries          #"
puts "###########################################"

#Add the path of the libraries and RTL files to the search_path variable
lappend search_path /home/IC/Projects/System/Backend/std_cells/libs
lappend search_path /home/IC/Projects/System/RTL


set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

set file_format verilog

analyze -format $file_format ALU.v
analyze -format $file_format ClkDiv.v
analyze -format $file_format CLK_GATE.v
analyze -format $file_format pulse_generator.v
analyze -format $file_format bit_synchronizer.v
analyze -format $file_format data_synchronizer.v
analyze -format $file_format Reg_File.v
analyze -format $file_format RST_SYNC.v
analyze -format $file_format SYS_CTRL.v
analyze -format $file_format data_sampling.v
analyze -format $file_format deserializer.v
analyze -format $file_format edge_bit_counter.v
analyze -format $file_format parity_check.v
analyze -format $file_format stop_check.v
analyze -format $file_format start_check.v
analyze -format $file_format UART_Rx.v
analyze -format $file_format UART_Rx_FSM.v
analyze -format $file_format MUX_8x1.v
analyze -format $file_format Parity_Calc.v
analyze -format $file_format serializer.v
analyze -format $file_format UART_Tx.v
analyze -format $file_format UART_Tx_FSM.v
analyze -format $file_format UART.v
analyze -format $file_format SYS_TOP.v

#################### Elaborating All The Design Parts #########################
puts "###############################################"
puts "######## Elaborating All The Design Parts ########"
puts "###############################################"

elaborate -lib work SYS_TOP

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source ./cons.tcl

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile 

#############################################################################
# Write out files
#############################################################################

write_file -format verilog -hierarchy -output netlists/$top_module.ddc
write_file -format verilog -hierarchy -output netlists/$top_module.v
write_sdf  sdf/$top_module.sdf
write_sdc  -nosplit sdc/$top_module.sdc

####################### reporting ##########################################

report_area -hierarchy > reports/area.rpt
report_power -hierarchy > reports/power.rpt
report_timing -delay_type min -max_paths 100 > reports/hold.rpt
report_timing -delay_type max -max_paths 100 > reports/setup.rpt
report_clock -attributes > reports/clocks.rpt
report_constraint -all_violators -nosplit > reports/constraints.rpt

############################################################################
# DFT Preparation Section
############################################################################

set flops_per_chain 100

set num_flops [sizeof_collection [all_registers -edge_triggered]]

set num_chains [expr $num_flops / $flops_per_chain + 1 ]

################# starting graphical user interface #######################

#gui_start

#exit
