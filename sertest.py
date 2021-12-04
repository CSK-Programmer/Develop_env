from ser import Ser

ser = Ser('COM3',9600)
ser.open_port()
print(ser.read_data())