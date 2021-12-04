# encoding=utf-8
import serial, time

class Ser():
    def __init__(self,port,baud):
        self.port = port
        self.baud = baud

    def open_port(self):
        try:
            ser = serial.Serial(self.port, self.baud)
            self.ser = ser
            return ser
        except Exception as e:
            print('Open com fail!\n\tCOM:{}\n\tbaud:{}'.format(self.port, self.baud))
            print('Exception:{}'.format(e))
            time.sleep(3)

    def write_data(self,string):
        if self.ser is None:
            self.open_port()
        success_bytes = self.ser.write(string)
        return success_bytes

    def read_data(self):
        if self.ser is None:
            self.open_port()
        data = self.ser.read(10)
        return data

    def close_port(self):
        if self.ser != None:
            if self.ser.isOpen:
                self.ser.close()