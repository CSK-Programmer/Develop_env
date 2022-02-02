# encoding=utf-8
import serial, time

class Ser():
    def __init__(self,port,baud,timeout=0.5):
        self.port = port
        self.baud = baud
        self.timeout = timeout

    def open_port(self):
        try:
            ser = serial.Serial(port=self.port, baudrate=self.baud, timeout=self.timeout)
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

    def read_data(self,line=1):
        if self.ser is None:
            self.open_port()
        data = b''
        for i in range(0,line):
            data_tmp = self.ser.readline()
            if data_tmp != b'':
                data += data_tmp
        return data

    def close_port(self):
        if self.ser != None:
            if self.ser.isOpen:
                self.ser.close()