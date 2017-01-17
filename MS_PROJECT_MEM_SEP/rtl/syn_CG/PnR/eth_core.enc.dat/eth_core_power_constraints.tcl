set_default_switching_activity -input_activity 0.200000 -period 3.030303ns
read_activity_file -format VCD -report_missing_nets false ../../../tb/mac_core_cg.vcd
set_power_analysis_mode -corner max -create_binary_db true -handle_glitch false -disable_static false -handle_tri_state false -honor_negative_energy true -ignore_control_signals true -ignore_inout_pin_cap false -state_dependent_leakage true -method static -split_bus_power false -transition_time_method max -write_static_currents true -x_transition_factor 0.500000 -z_transition_factor 0.250000
