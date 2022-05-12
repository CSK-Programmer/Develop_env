from turtle import *
import random, time, ctypes

Directions_for_use = 'Directions for use: \n\tgreen represents health\n\tred represents an infected\n\tyellow represents in the hospital\n\tblue recovered\n\tblack on behalf of the dead'
user32 = ctypes.windll.LoadLibrary('user32.dll')   #user32 用于弹出对话框
contact=1                                          #contact 每天接触人数
infected = 5                                       #infected 最初感染人数
inf = 0.1                                          #inf 接触感染者后感染概率
cure = 0.2                                         #cure 每天康复概率
dead = 0.02                                        #dead 每天死亡概率
population = 500                                   #population 总人口
hospital = 50                                      #hospital 床位

Objects = []
cureds = []
deads = []
in_hospital = []

class disease():
    def __init__(self,statu):
        self.day = 0
        self.x = (random.randrange(-25000,23000)/100)
        self.y = (random.randrange(-23000,25000)/100)
        self.statu = statu
        self.check_statu()

    def square(self, x, y, size, color_name):
        up()
        goto(x, y)
        down()
        color(color_name)
        begin_fill()

        for count in range(4):
            forward(size)
            left(90)
        end_fill()

    def draw(self,color):
        self.square(self.x,self.y,20,self.color)
        update()

    def check_statu(self):
        if(self.statu == 'health'):
            self.color = 'green'
        elif(self.statu == 'ill'):
            self.color = 'red'
        elif(self.statu == 'in_hospital'):
            self.color = 'yellow'
        elif(self.statu == 'cured'):
            self.color = 'blue'
        elif(self.statu == 'dead'):
            self.color = 'black'
            
        self.draw(self.color)

    def infect(self):
        global infected
        if((random.randrange(0, 1000000)/1000000) < inf):
            for i in range(infected):
                if(self.statu=='health'):
                    for c in range(contact):
                        if (population-infected-len(deads)-len(cureds)>0):
                            p=random.randrange(0,100)
                            if p<=100*inf:
                                self.statu = 'ill'
                                infected += 1
                                """ print(infected) """

    def into_hospital(self):
        if(self.statu=='ill' and hospital>len(in_hospital)):
            self.statu = 'in_hospital'
            in_hospital.append(self)
    
    def cure(self):
        global infected
        if(self in in_hospital):
            p=random.randrange(0,100)
            if p<=100*cure:
                self.statu = 'cured'
                in_hospital.remove(self)
                infected -= 1
                """ print(infected) """
                cureds.append(self)
    
    def dead(self):
        global infected
        if(self.statu=='ill' or self.statu=='in_hospital'):
            p=random.randrange(0,100)
            if p<=100*dead:
                self.statu = 'dead'
                infected-=1
                """ print(infected) """
                deads.append(self)
                if self in in_hospital:
                    in_hospital.remove(self)
    
    def next_day(self):
        self.infect()
        self.into_hospital()
        self.cure()
        self.day += 1
        self.check_statu()

def start():
    while(True):
        clear()
        for obj in Objects:
            obj.next_day()
            update()
        """ print(infected) """
        if(infected==0):
            user32.MessageBoxA(0, str.encode('The virus is dead'), str.encode('CSK_disease'), 0)
            user32.MessageBoxA(0, str.encode('Thanks for watching!\nMade by CSK'), str.encode('CSK_disease'), 0)
            break
        if(len(deads)==population):
            user32.MessageBoxA(0, str.encode('People is dead'), str.encode('CSK_disease'), 0)
            user32.MessageBoxA(0, str.encode('Thanks for watching!\nMade by CSK'), str.encode('CSK_disease'), 0)
            break
        time.sleep(0.4)

setup(500,500,0,0)
hideturtle()
tracer(False)
user32.MessageBoxA(0, str.encode(Directions_for_use), str.encode('CSK_disease'), 0)
for i in range(0,population):
    if(i < infected):
        Objects.append(disease('ill'))
    else:
        Objects.append(disease('health'))

""" print(Objects) """
listen()
onkey(start(),'s')
done()