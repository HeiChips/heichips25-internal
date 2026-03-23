###############################################################################
# Created by write_sdc
###############################################################################
current_design heichips25_internal
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 [get_ports {clk}]
set_clock_uncertainty -setup 0.2500 clk
set_clock_uncertainty -hold 0.0500 clk
set_propagated_clock [get_clocks {clk}]
create_clock -name clk_delayed -period 10.0000 [get_pins {u_delay_line/clk_delayed}]
set_propagated_clock [get_clocks {clk_delayed}]
set_clock_groups -name async_clocks -asynchronous \
 -group [get_clocks {clk}]\
 -group [get_clocks {clk_delayed}]
set_disable_timing [get_ports {ena}]
set_disable_timing [get_ports {rst_n}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
