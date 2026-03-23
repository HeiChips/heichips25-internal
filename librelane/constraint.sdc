set_disable_timing [get_ports {rst_n ena}]

create_clock -name clk -period 10 [get_ports clk]

create_clock -name clk_delayed -period 10 [get_pins u_delay_line/clk_delayed]
 set_clock_groups -asynchronous \
 -group [get_clocks clk] \
  -group [get_clocks clk_delayed] \
  -name async_clocks

set_clock_uncertainty -setup 0.25 [get_clocks clk]
set_clock_uncertainty -hold 0.05 [get_clocks clk] 
