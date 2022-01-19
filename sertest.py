from ser import Ser
from time import sleep

ser = Ser('COM3',9600)
ser.open_port()
sleep(3)
print(ser.write_data(b"Hello!"))