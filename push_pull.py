# 计算AB类功放每管的瞬时耗散功率曲线
import matplotlib.pyplot as plt

# settings
Load_Res = 2                            #负载阻值(单位:Ω)
V_supply = 5000//2                      #电源电压(单位:mV,单电源须除以2)

#计算
lst = []
for i in range(0,V_supply,1):
    V_BJT = V_supply - i                #BJT电压(单位:mV)
    I_BJT = i / Load_Res                #BJT电流(单位:mA)
    P_BJT = (V_BJT*I_BJT)               #BJT瞬时耗散功率(单位:mW)
    lst.append(P_BJT/1000000)           #转换单位

#作图
fig,ax=plt.subplots()
ax.plot(lst,c='red')
plt.show()