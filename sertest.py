from ser import Ser
from time import sleep

ser = Ser('COM1',115200)
ser.open_port()
sleep(3)
print(ser.write_data(b"AT+CSQ\n"))
print(ser.read_data(10))