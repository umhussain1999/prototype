# ####################################################################

#  Created by Genus(TM) Synthesis Solution 25.10-p002_1 on Wed Feb 25 14:03:54 CST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design fifo

set_load -pin_load 4.0 [get_ports full]
set_load -pin_load 4.0 [get_ports {data_out[7]}]
set_load -pin_load 4.0 [get_ports {data_out[6]}]
set_load -pin_load 4.0 [get_ports {data_out[5]}]
set_load -pin_load 4.0 [get_ports {data_out[4]}]
set_load -pin_load 4.0 [get_ports {data_out[3]}]
set_load -pin_load 4.0 [get_ports {data_out[2]}]
set_load -pin_load 4.0 [get_ports {data_out[1]}]
set_load -pin_load 4.0 [get_ports {data_out[0]}]
set_load -pin_load 4.0 [get_ports empty]
set_clock_gating_check -setup 0.0 
set_max_fanout 5.000 [get_ports clk]
set_max_fanout 5.000 [get_ports rst_n]
set_max_fanout 5.000 [get_ports w_en]
set_max_fanout 5.000 [get_ports {data_in[7]}]
set_max_fanout 5.000 [get_ports {data_in[6]}]
set_max_fanout 5.000 [get_ports {data_in[5]}]
set_max_fanout 5.000 [get_ports {data_in[4]}]
set_max_fanout 5.000 [get_ports {data_in[3]}]
set_max_fanout 5.000 [get_ports {data_in[2]}]
set_max_fanout 5.000 [get_ports {data_in[1]}]
set_max_fanout 5.000 [get_ports {data_in[0]}]
set_max_fanout 5.000 [get_ports r_en]
set_drive 2.0 [get_ports clk]
set_drive 2.0 [get_ports rst_n]
set_drive 2.0 [get_ports w_en]
set_drive 2.0 [get_ports {data_in[7]}]
set_drive 2.0 [get_ports {data_in[6]}]
set_drive 2.0 [get_ports {data_in[5]}]
set_drive 2.0 [get_ports {data_in[4]}]
set_drive 2.0 [get_ports {data_in[3]}]
set_drive 2.0 [get_ports {data_in[2]}]
set_drive 2.0 [get_ports {data_in[1]}]
set_drive 2.0 [get_ports {data_in[0]}]
set_drive 2.0 [get_ports r_en]
set_wire_load_mode "top"
