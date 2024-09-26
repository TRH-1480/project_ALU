#clock
set_property PACKAGE_PIN E3  [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
#create_clock -period 100.00 -name clk [get_ports clk]

#reset
set_property PACKAGE_PIN R17 [get_ports rs]
set_property IOSTANDARD LVCMOS33 [get_ports rs]

#input x ,y
set_property PACKAGE_PIN [] [get_ports x[0]]
set_property IOSTANDARD LVCMOS33 [get_ports x[0]]

set_property PACKAGE_PIN [] [get_ports x[1]]
set_property IOSTANDARD LVCMOS33 [get_ports x[1]]

set_property PACKAGE_PIN [] [get_ports x[2]]
set_property IOSTANDARD LVCMOS33 [get_ports x[2]]

set_property PACKAGE_PIN [] [get_ports x[3]]
set_property IOSTANDARD LVCMOS33 [get_ports x[3]]

set_property PACKAGE_PIN [] [get_ports x[4]]
set_property IOSTANDARD LVCMOS33 [get_ports x[4]]

set_property PACKAGE_PIN [] [get_ports x[5]]
set_property IOSTANDARD LVCMOS33 [get_ports x[5]]

set_property PACKAGE_PIN [] [get_ports x[6]]
set_property IOSTANDARD LVCMOS33 [get_ports x[6]]

set_property PACKAGE_PIN [] [get_ports x[7]]
set_property IOSTANDARD LVCMOS33 [get_ports x[7]]

set_property PACKAGE_PIN [] [get_ports x[8]]
set_property IOSTANDARD LVCMOS33 [get_ports x[8]]

set_property PACKAGE_PIN [] [get_ports x[9]]
set_property IOSTANDARD LVCMOS33 [get_ports x[9]]

set_property PACKAGE_PIN [] [get_ports x[10]]
set_property IOSTANDARD LVCMOS33 [get_ports x[10]]

set_property PACKAGE_PIN [] [get_ports x[11]]
set_property IOSTANDARD LVCMOS33 [get_ports x[11]]

set_property PACKAGE_PIN [] [get_ports x[12]]
set_property IOSTANDARD LVCMOS33 [get_ports x[12]]

set_property PACKAGE_PIN [] [get_ports x[13]]
set_property IOSTANDARD LVCMOS33 [get_ports x[13]]

set_property PACKAGE_PIN [] [get_ports x[14]]
set_property IOSTANDARD LVCMOS33 [get_ports x[14]]

set_property PACKAGE_PIN [] [get_ports x[15]]
set_property IOSTANDARD LVCMOS33 [get_ports x[15]]

set_property PACKAGE_PIN [] [get_ports y[0]]
set_property IOSTANDARD LVCMOS33 [get_ports y[0]]

set_property PACKAGE_PIN [] [get_ports y[1]]
set_property IOSTANDARD LVCMOS33 [get_ports y[1]]

set_property PACKAGE_PIN [] [get_ports y[2]]
set_property IOSTANDARD LVCMOS33 [get_ports y[2]]

set_property PACKAGE_PIN [] [get_ports y[3]]
set_property IOSTANDARD LVCMOS33 [get_ports y[3]]

set_property PACKAGE_PIN [] [get_ports y[4]]
set_property IOSTANDARD LVCMOS33 [get_ports y[4]]

set_property PACKAGE_PIN [] [get_ports y[5]]
set_property IOSTANDARD LVCMOS33 [get_ports y[5]]

set_property PACKAGE_PIN [] [get_ports y[6]]
set_property IOSTANDARD LVCMOS33 [get_ports y[6]]

set_property PACKAGE_PIN [] [get_ports y[7]]
set_property IOSTANDARD LVCMOS33 [get_ports y[7]]

set_property PACKAGE_PIN [] [get_ports y[8]]
set_property IOSTANDARD LVCMOS33 [get_ports y[8]]

set_property PACKAGE_PIN [] [get_ports y[9]]
set_property IOSTANDARD LVCMOS33 [get_ports y[9]]

set_property PACKAGE_PIN [] [get_ports y[10]]
set_property IOSTANDARD LVCMOS33 [get_ports y[10]]

set_property PACKAGE_PIN [] [get_ports y[11]]
set_property IOSTANDARD LVCMOS33 [get_ports y[11]]

set_property PACKAGE_PIN [] [get_ports y[12]]
set_property IOSTANDARD LVCMOS33 [get_ports y[12]]

set_property PACKAGE_PIN [] [get_ports y[13]]
set_property IOSTANDARD LVCMOS33 [get_ports y[13]]

set_property PACKAGE_PIN [] [get_ports y[14]]
set_property IOSTANDARD LVCMOS33 [get_ports y[14]]

set_property PACKAGE_PIN [] [get_ports y[15]]
set_property IOSTANDARD LVCMOS33 [get_ports y[15]]

#flag
set_property PACKAGE_PIN M13 [get_ports f1]
set_property IOSTANDARD LVCMOS33 [get_ports f1]

set_property PACKAGE_PIN L16 [get_ports f2]
set_property IOSTANDARD LVCMOS33 [get_ports f2]

set_property PACKAGE_PIN J15 [get_ports f3]
set_property IOSTANDARD LVCMOS33 [get_ports f3]

#ALU

set_property PACKAGE_PIN V10 [get_ports zx]
set_property IOSTANDARD LVCMOS33 [get_ports zx]

set_property PACKAGE_PIN U11 [get_ports nx]
set_property IOSTANDARD LVCMOS33 [get_ports nx]

set_property PACKAGE_PIN U12 [get_ports zy]
set_property IOSTANDARD LVCMOS33 [get_ports zy]

set_property PACKAGE_PIN H6 [get_ports ny]
set_property IOSTANDARD LVCMOS33 [get_ports ny]

set_property PACKAGE_PIN T13 [get_ports f]
set_property IOSTANDARD LVCMOS33 [get_ports f]

set_property PACKAGE_PIN R16 [get_ports no]
set_property IOSTANDARD LVCMOS33 [get_ports no]

#write enable
set_property PACKAGE_PIN R15 [get_ports we]
set_property IOSTANDARD LVCMOS33 [get_ports we]


