# 计算AB类功放每管的瞬时耗散功率曲线
import matplotlib.pyplot as plt
import math

# settings
Load_Res = 4                            #负载阻值(单位:Ω)
Load_Power = 3                          #负载功率(单位:W)
V_supply = 9000//2                      #电源电压(单位:mV,单电源须除以2)

#计算
V_Load_max = math.sqrt(Load_Res*Load_Power)
avg_P = 0
lst_P = []
lst_V = []
lst_I = []
for i in range(0,V_supply+1,1):
    V_BJT = V_supply - i                #BJT瞬时电压(单位:mV)
    I_BJT = i / Load_Res                #BJT瞬时电流(单位:mA)
    P_BJT = V_BJT*I_BJT                 #BJT瞬时耗散功率(单位:mW)
    P_BJT/=1000000                      #转换单位
    V_BJT/=1000
    I_BJT/=1000
    lst_P.append(P_BJT)
    lst_V.append(V_BJT)
    lst_I.append(I_BJT)
    avg_P += P_BJT
avg_P /= V_supply

#作图
fig,ax=plt.subplots()
ax.plot(lst_P,c='black')                #BJT瞬时耗散功率(单位:W)
ax.plot(lst_V,c='red')                  #BJT瞬时电压(单位:V)
ax.plot(lst_I,c='blue')                 #BJT瞬时电流(单位:A)
print(f'Max V_Load:{V_Load_max}')
print(f'Average P_BJT:{avg_P}')
plt.show()