# ####################################################################

#  Created by Genus(TM) Synthesis Solution 25.10-p002_1 on Fri Feb 13 16:15:26 CST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design banyan8x8

set_load -pin_load 4.0 [get_ports {out[7]}]
set_load -pin_load 4.0 [get_ports {out[6]}]
set_load -pin_load 4.0 [get_ports {out[5]}]
set_load -pin_load 4.0 [get_ports {out[4]}]
set_load -pin_load 4.0 [get_ports {out[3]}]
set_load -pin_load 4.0 [get_ports {out[2]}]
set_load -pin_load 4.0 [get_ports {out[1]}]
set_load -pin_load 4.0 [get_ports {out[0]}]
set_clock_gating_check -setup 0.0 
set_max_fanout 5.000 [get_ports {in[7]}]
set_max_fanout 5.000 [get_ports {in[6]}]
set_max_fanout 5.000 [get_ports {in[5]}]
set_max_fanout 5.000 [get_ports {in[4]}]
set_max_fanout 5.000 [get_ports {in[3]}]
set_max_fanout 5.000 [get_ports {in[2]}]
set_max_fanout 5.000 [get_ports {in[1]}]
set_max_fanout 5.000 [get_ports {in[0]}]
set_max_fanout 5.000 [get_ports {sel_s1[3]}]
set_max_fanout 5.000 [get_ports {sel_s1[2]}]
set_max_fanout 5.000 [get_ports {sel_s1[1]}]
set_max_fanout 5.000 [get_ports {sel_s1[0]}]
set_max_fanout 5.000 [get_ports {sel_s2[3]}]
set_max_fanout 5.000 [get_ports {sel_s2[2]}]
set_max_fanout 5.000 [get_ports {sel_s2[1]}]
set_max_fanout 5.000 [get_ports {sel_s2[0]}]
set_max_fanout 5.000 [get_ports {sel_s3[3]}]
set_max_fanout 5.000 [get_ports {sel_s3[2]}]
set_max_fanout 5.000 [get_ports {sel_s3[1]}]
set_max_fanout 5.000 [get_ports {sel_s3[0]}]
set_drive 2.0 [get_ports {in[7]}]
set_drive 2.0 [get_ports {in[6]}]
set_drive 2.0 [get_ports {in[5]}]
set_drive 2.0 [get_ports {in[4]}]
set_drive 2.0 [get_ports {in[3]}]
set_drive 2.0 [get_ports {in[2]}]
set_drive 2.0 [get_ports {in[1]}]
set_drive 2.0 [get_ports {in[0]}]
set_drive 2.0 [get_ports {sel_s1[3]}]
set_drive 2.0 [get_ports {sel_s1[2]}]
set_drive 2.0 [get_ports {sel_s1[1]}]
set_drive 2.0 [get_ports {sel_s1[0]}]
set_drive 2.0 [get_ports {sel_s2[3]}]
set_drive 2.0 [get_ports {sel_s2[2]}]
set_drive 2.0 [get_ports {sel_s2[1]}]
set_drive 2.0 [get_ports {sel_s2[0]}]
set_drive 2.0 [get_ports {sel_s3[3]}]
set_drive 2.0 [get_ports {sel_s3[2]}]
set_drive 2.0 [get_ports {sel_s3[1]}]
set_drive 2.0 [get_ports {sel_s3[0]}]
set_wire_load_mode "top"
