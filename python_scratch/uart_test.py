#!/usr/bin/env python3

import mraa as m
from time import sleep

u = m.Uart(0)

u.setBaudRate(9600)
u.setMode(8, m.UART_PARITY_NONE, 1)
u.setFlowcontrol(False, False)

while True:
	sleep(0.2)
	print('Checking...')
	if u.dataAvailable():
		print('  Reading...')
		data_byte = u.readStr(1)
		print(f'  Received: {data_byte}')
