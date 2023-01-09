import pygame.midi
from time import sleep
mu=0
speed=1
def play(inst,num,time,hard=127):
    player.set_instrument(inst)
    player.note_on(num,hard)
    sleep(time*speed)
    player.note_off(num,hard)

pygame.midi.init()
player = pygame.midi.Output(0)
player.set_instrument(0)
'''
for i in range(0,84+1):
    print(mu)
    player.note_on(mu, 127)
    time.sleep(0.1)
    player.note_off(mu, 127)
    mu+=1
'''
def main():
    global speed
    speed=60/130
    play(0,60,1.5,127)
    play(0,62,1.5,127)
    play(0,55,1,127)
    play(0,62,1.5,127)
    play(0,64,1.5,127)
    play(0,67,0.33,127)
    play(0,65,0.33,127)
    play(0,64,0.33,127)
    play(0,60,1.5,127)
    play(0,62,1.5,127)
    play(0,55,1.5,127)
    play(0,55,0.3,127)
    play(0,55,0.3,127)
    play(0,57,0.3,127)
    play(0,60,0.3,127)
    play(0,57,0.3,127)
    play(0,60,1.5,127)
    play(0,62,1.5,127)
    play(0,55,1,127)
    play(0,62,1.5,127)
    play(0,64,1.5,127)
    play(0,67,0.33,127)
    play(0,65,0.33,127)
    play(0,64,0.33,127)
    play(0,60,1.5,127)
    play(0,62,1.5,127)
    play(0,55,1.5,127)
    play(0,60,0.25,127)
    play(0,60,1,127)
    play(0,60,0.25,127)
    play(0,60,0.5,127)
    play(0,60,1,127)

""" 
speed=60/110
play(0,59,0.5,127)
play(0,59,0.5,127)
play(0,60,0.5,127)
play(0,62,0.5,127)
play(0,59,0.5,127)
play(0,60,0.5,127)
play(0,62,0.5,127)
 """

while True:
    main()
    sleep(1)

del player
pygame.midi.quit()