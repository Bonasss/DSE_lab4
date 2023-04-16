#**************************************************************
# Time Information
#**************************************************************
set_time_format -unit ns -decimal_places 3
#**************************************************************
# Create Clock
#**************************************************************
#
# 1 GHz
create_clock -name clock -period 1.000 -waveform {0 0.5} [get_ports {clock}]
#
#100 MHz
#create_clock -name test -period 10.000 -waveform {0 5} [get_ports {KEY[1]}]
