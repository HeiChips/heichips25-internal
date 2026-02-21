set_disable_timing [get_ports {rst_n ena}]

create_clock -name clk -period 10 [get_ports clk]

set_clock_uncertainty -setup 0.25 [get_clocks clk]
set_clock_uncertainty -hold 0.05 [get_clocks clk] 
