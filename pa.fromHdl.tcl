
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Solar_tracking -dir "/home/ise/Share_with_VM_Digital/Project/Solar_tracking/planAhead_run_4" -part xc6slx9tqg144-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "main_input_processor_8bits.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {DISPLAY_LIGHT_8bits.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ANGLE_CALCULATOR_8bits.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {main_input_processor_8bits.vf}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top main_input_processor_8bits $srcset
add_files [list {main_input_processor_8bits.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx9tqg144-3
