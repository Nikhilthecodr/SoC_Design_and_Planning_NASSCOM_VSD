set ::env(CLOCK_PORT) Clk
set ::env(CLOCK_PERIOD) 12.000
set ::env(SYNTH_DRIVING_CELL) sky130_fd_sc_hd__inv_8
set ::env(SYNTH_DRIVING_CELL_PIN) Y
set ::env(SYNTH_CAP_LOAD) 13.6
set ::env(SYNTH_MAX_FANOUT) 5

# Create clock
create_clock -name $::env(CLOCK_PORT) -period $::env(CLOCK_PERIOD) [get_ports $::env(CLOCK_PORT)]

# Set input delay
set input_delay_value [expr $::env(CLOCK_PERIOD) * 10 PCT]
set input_delay [expr $::env(CLOCK_PERIOD) * 10 PCT]
set_input_delay $input_delay_value [all_inputs]

# Set output delay
set output_delay_value [expr $::env(CLOCK_PERIOD) * 10 PCT]
set_output_delay $output_delay_value [all_outputs]

# Info
puts "[INFO]: Setting input delay to: $input_delay_value"

# Set clk index
set clk_indx [lsearch [all_inputs] [get_port $::env(CLOCK_PORT)]]
set rst_indx [lsearch [all_inputs] [get_port resetn]]
set all_inputs_wo_clk [lreplace [all_inputs] $clk_indx $clk_indx]
set all_inputs_wo_clk_rst [lreplace $all_inputs_wo_clk $rst_indx $rst_indx]

# Set correct resetn
set_input_delay 0.0 [get_clocks $::env(CLOCK_PORT)] $all_inputs_wo_clk_rst

# Set input delay
set_input_delay 0.0 -clock [get_clocks $::env(CLOCK_PORT)] [resetn]
set_input_delay 0.0 -clock [get_clocks $::env(CLOCK_PORT)] [all_outputs]

# Set load (TODO set this as parameter)
set cap_load [expr $::env(SYNTH_CAP_LOAD) / 1000.0]
set_load $cap_load [all_outputs]
set_load $cap_load [all_outputs]

# Set driving cell
set_driving_cell -lib_cell $::env(SYNTH_DRIVING_CELL) -pin $::env(SYNTH_DRIVING_CELL_PIN) [all_inputs]
set cap_load [expr $::env(SYNTH_CAP_LOAD) / 1000.0]
set_load $cap_load [all_outputs]
