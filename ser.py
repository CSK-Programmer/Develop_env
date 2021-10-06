# encoding=utf-8
import serial

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
            self.error('Open com fail!\n\tCOM:{}\n\tbaud:{}'.format(self.port, self.baud))
            self.error('Exception:{}'.format(e))

    def write_data(self,string):
        if self.ser is None:
            self.open_port()
        success_bytes = self.ser.write.encode('UTF-8')
        return success_bytes

    def read_data(self):
        if self.ser is None:
            self.open_port()
        data = serial.readall()
        return data

    def close_port(self):
        if self.ser != None:
            if self.ser.isOpen:
                self.ser.close()