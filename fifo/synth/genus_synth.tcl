set_db common_ui false
set_attr information_level 6

set_attr init_hdl_search_path {../}

set libdir "/tools/cadence_data/PDKs_and_License_File/std_cell_28/TS55LB000-FE-r0p0-00eac0/arm/tsmc/cln28lp/sc12mc_base_svt_c40/r0p0/lib"
set libfile "${libdir}/sc12mc_cln28lp_base_svt_c40_tt_typical_max_1p05v_25c.lib"

if {![file exists $libfile]} {
  puts "ERROR: Liberty file not found: $libfile"
  exit 1
}
if {![file readable $libfile]} {
  puts "ERROR: Liberty file not readable: $libfile"
  exit 1
}

set_attribute library [list $libfile]

set logdir "./logs"
set repdir "./reports"
set netdir "./netlist"

file mkdir $logdir
file mkdir $repdir
file mkdir $netdir

set rtlFiles [list ../fifo.v]
set basename fifo
set runname gates_genus

read_hdl -v2001 ${rtlFiles}
elaborate ${basename}

set_drive     2.0 [all_inputs]
set_load      4.0 [all_outputs]
set_max_fanout 5  [all_inputs]

syn_generic
syn_map
syn_opt

change_names -instance -restricted "\[ \] ." -replace_str "_" -log_changes ${logdir}/change_names_verilog

write_hdl -mapped > ${netdir}/${basename}_${runname}.v
write_sdc > ${netdir}/${basename}_${runname}.sdc
write_sdf -delimiter / -edges check_edge -no_escape -setuphold split -recrem split > ${netdir}/${basename}_${runname}.sdf

report gates  > ${repdir}/${basename}_${runname}_area.rep
report timing > ${repdir}/${basename}_${runname}_timing.rep
report power  > ${repdir}/${basename}_${runname}_power.rep

gui_show

