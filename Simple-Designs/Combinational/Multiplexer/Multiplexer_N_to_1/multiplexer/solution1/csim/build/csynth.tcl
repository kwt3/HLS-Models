# Set the top-level function or module for synthesis
set_top multiplexer

# Add the source files to the project
add_files multiplexer.cpp

# Set the target device
set_part <target_device>

# Specify synthesis options if needed
# For example:
# set_directive_interface -mode ap_memory -register_balance off

# Specify optimization options if needed
# For example:
# set_directive_pipeline -II 1

# Open the solution
open_solution solution1 -flow_target vivado
