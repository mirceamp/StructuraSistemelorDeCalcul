# ==============================================================
#  Vivado TCL Script - Zybo Z7 HDMI Project Recreation (Portable + Auto-Build)
#  Author : Mircea Paul Muresan
# ==============================================================

set proj_name "zybo_hdmi"
set proj_dir "./vivado_project"
set bd_name   "hdmi"
set part_name "xc7z020clg400-1"

# ---------------------------------------------------------------
# Define relative paths
# ---------------------------------------------------------------
set root_dir [file normalize [pwd]]
set boards_path "$root_dir/boards"
set repo_path  "$root_dir/ip_repo/zybo-z7-hdmi-master/zybo-z7-hdmi-master/hardware/zybo_z7_hdmi_repo"
set bd_tcl     "$root_dir/src/bd/${bd_name}_bd.tcl"
set wrapper_local "$root_dir/src/hdl/${bd_name}_wrapper.vhd"
set constr_path "$root_dir/constrs/zybo_z7_hdmi.xdc"

# ---------------------------------------------------------------
# Create project
# ---------------------------------------------------------------
if {[file exists $proj_dir]} { file delete -force $proj_dir }
create_project $proj_name $proj_dir -part $part_name
puts "INFO: Project created for $part_name"

# ---------------------------------------------------------------
# Add board repo
# ---------------------------------------------------------------
if {[file exists $boards_path]} {
    set_param board.repoPaths [list $boards_path]
    set zybo_candidates [get_board_parts -quiet *zybo-z7-20*]
    if {[llength $zybo_candidates] > 0} {
        set zybo_board [lindex $zybo_candidates 0]
        set_property board_part $zybo_board [current_project]
        puts "INFO: Using board_part: $zybo_board"
    } else {
        puts "WARNING: Zybo Z7-20 board not found in $boards_path."
    }
} else {
    puts "WARNING: Board repo not found: $boards_path"
}

# ---------------------------------------------------------------
# Add external IP repo
# ---------------------------------------------------------------
if {[file exists $repo_path]} {
    set_property ip_repo_paths [list $repo_path] [current_project]
    update_ip_catalog
    puts "INFO: Added custom IP repo: $repo_path"
} else {
    puts "ERROR: Missing IP repository: $repo_path"
    exit 1
}

# ---------------------------------------------------------------
# Import Block Design
# ---------------------------------------------------------------
if {![file exists $bd_tcl]} {
    puts "ERROR: Missing Block Design Tcl: $bd_tcl"
    exit 1
}

create_bd_design $bd_name
current_bd_design $bd_name
puts "INFO: Sourcing Block Design script: $bd_tcl"
source $bd_tcl

# ---------------------------------------------------------------
# Run create_root_design only if empty
# ---------------------------------------------------------------
if {[info procs create_root_design] != ""} {
    if {[llength [get_bd_cells -quiet]] == 0 && [llength [get_bd_ports -quiet]] == 0} {
        puts "INFO: Running create_root_design..."
        create_root_design ""
    } else {
        puts "INFO: Block design already populated — skipping create_root_design."
    }
} else {
    puts "WARNING: No create_root_design procedure found in $bd_tcl"
}

# ---------------------------------------------------------------
# Validate & save BD
# ---------------------------------------------------------------
validate_bd_design
save_bd_design
puts "INFO: Block design validated and saved."

# ---------------------------------------------------------------
# Generate HDL wrapper
# ---------------------------------------------------------------
catch {make_wrapper -files [get_files *.bd] -top} wrapper_result
puts "INFO: make_wrapper result: $wrapper_result"

set auto_wrapper "$proj_dir/${proj_name}.gen/sources_1/bd/${bd_name}/hdl/${bd_name}_wrapper.vhd"

if {[file exists $auto_wrapper]} {
    add_files $auto_wrapper
    set_property top "${bd_name}_wrapper" [current_fileset]
    puts "INFO: Using auto-generated wrapper."
} elseif {[file exists $wrapper_local]} {
    add_files $wrapper_local
    set_property top "${bd_name}_wrapper" [current_fileset]
    puts "INFO: Using wrapper from src/hdl."
} else {
    puts "WARNING: No wrapper file found."
}

# ---------------------------------------------------------------
# Add constraints (.xdc)
# ---------------------------------------------------------------
set constr_path "$root_dir/constrs/zyboz20.xdc"

if {[file exists $constr_path]} {
    add_files -fileset constrs_1 $constr_path
    set_property used_in_synthesis true [get_files $constr_path]
    set_property used_in_implementation true [get_files $constr_path]
    puts "INFO: Added constraints file: $constr_path"
} else {
    puts "WARNING: Constraint file not found at $constr_path"
}

# ---------------------------------------------------------------
# Validate and compile
# ---------------------------------------------------------------
update_compile_order -fileset sources_1

puts ""
puts "=============================================================="
puts "Zybo Z7 HDMI project recreated successfully!"
puts "Generating bitstream automatically..."
puts "=============================================================="

# ---------------------------------------------------------------
# Launch build (Synthesis → Implementation → Bitstream)
# ---------------------------------------------------------------
puts "INFO: Launching synthesis and implementation (non-blocking)..."
launch_runs synth_1 -jobs 8
launch_runs impl_1 -to_step write_bitstream -jobs 8

puts "INFO: You can monitor progress in the Design Runs tab."
puts "      Once both runs finish, the bitstream will appear under:"
puts "      $proj_dir/${proj_name}.runs/impl_1/${bd_name}_wrapper.bit"

set bitstream_path "$proj_dir/${proj_name}.runs/impl_1/${bd_name}_wrapper.bit"
if {[file exists $bitstream_path]} {
    puts "INFO: Bitstream generated at: $bitstream_path"
} else {
    puts "WARNING: Bitstream file not found after build."
}

puts ""
puts "=============================================================="
puts "Build completed successfully."
puts "Project Directory : $proj_dir"
puts "Bitstream         : $bitstream_path"
puts "=============================================================="
