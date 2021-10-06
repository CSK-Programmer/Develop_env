import matplotlib.pyplot as plt
import math
lst1=[]
lst2=[]

for i in range(0,361,1):
    deg = i
    rad=(deg/360)*2*3.1415926535897932
    lst1.append(math.sin(rad))

for i in range(0,361,1):
    deg = i
    rad=(deg/360)*2*3.1415926535897932
    lst2.append(math.cos(rad))

fig,ax=plt.subplots()
ax.plot(lst1,c='red')
ax.plot(lst2,c='blue')

plt.show()