# Pmod 0_0
#set_property -dict {PACKAGE_PIN G8 IOSTANDARD LVCMOS33} [get_ports pb_uart_tx2]
# Pmod 0_1
#set_property -dict {PACKAGE_PIN H8 IOSTANDARD LVCMOS33} [get_ports pb_uart_tx]
# Pmod 0_2
#set_property -dict {PACKAGE_PIN G7 IOSTANDARD LVCMOS33} [get_ports pb_reset_status]


# UART2_TXD_FPGA_RXD
set_property -dict {PACKAGE_PIN A20 IOSTANDARD LVCMOS18} [get_ports pb_uart_rx]
# UART2_TXD_FPGA_TXD
set_property -dict {PACKAGE_PIN C19 IOSTANDARD LVCMOS18} [get_ports pb_uart_tx]
# UART2_CTS_B
set_property -dict {PACKAGE_PIN A19 IOSTANDARD LVCMOS18} [get_ports {pb_uart_cts[0]}]


# Pmod 0_2