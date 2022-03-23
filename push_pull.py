import matplotlib.pyplot as plt

# settings
Load_Res = 4
V_supply = 5000//2
test_step = 1

lst = []
for i in range(0,V_supply,test_step):
    lst.append(((V_supply - i) * (i / Load_Res))/1000000)

fig,ax=plt.subplots()
ax.plot(lst,c='red')

plt.show()