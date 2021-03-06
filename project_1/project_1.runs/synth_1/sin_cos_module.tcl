# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

create_project -in_memory -part xc7vx485tffg1157-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/mtech/poonam_vlsi/vlsi_proj/sinn/project_1/project_1.cache/wt [current_project]
set_property parent.project_path C:/Users/mtech/poonam_vlsi/vlsi_proj/sinn/project_1/project_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_ip c:/Users/mtech/poonam_vlsi/vlsi_proj/sinn/project_1/project_1.srcs/sources_1/ip/sine_wave/sine_wave.xco
set_property is_locked true [get_files c:/Users/mtech/poonam_vlsi/vlsi_proj/sinn/project_1/project_1.srcs/sources_1/ip/sine_wave/sine_wave.xco]

read_vhdl -library xil_defaultlib C:/Users/mtech/poonam_vlsi/vlsi_proj/sinn/sin_cos_module.vhd
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
catch { write_hwdef -file sin_cos_module.hwdef }
synth_design -top sin_cos_module -part xc7vx485tffg1157-1
write_checkpoint -noxdef sin_cos_module.dcp
catch { report_utilization -file sin_cos_module_utilization_synth.rpt -pb sin_cos_module_utilization_synth.pb }
