# 计算AB类功放每管的峰值耗散功率曲线
import matplotlib.pyplot as plt

# settings
Load_Res = 2        #负载阻值(单位:Ω)
V_supply = 5000//2  #电源电压(单位:mV,单电源须除以2)

lst = []
for i in range(0,V_supply,1):
    lst.append(((V_supply - i) * (i / Load_Res))/1000000)

fig,ax=plt.subplots()
ax.plot(lst,c='red')

plt.show()