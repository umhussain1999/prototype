# ####################################################################

#  Created by Genus(TM) Synthesis Solution 25.10-p002_1 on Fri Feb 13 16:14:05 CST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design banyan_cell

set_load -pin_load 4.0 [get_ports a]
set_load -pin_load 4.0 [get_ports b]
set_clock_gating_check -setup 0.0 
set_max_fanout 5.000 [get_ports x]
set_max_fanout 5.000 [get_ports y]
set_max_fanout 5.000 [get_ports sel]
set_drive 2.0 [get_ports x]
set_drive 2.0 [get_ports y]
set_drive 2.0 [get_ports sel]
set_wire_load_mode "top"
