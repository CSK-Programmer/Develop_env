import pygame
import pygame.midi
from time import sleep

class midi_pla():
    def __init__(self,speed):
        pygame.midi.init()
        self.player = pygame.midi.Output(0)
        self.speed = 60 / speed

    def play(self,instrument,time,numhard=127):
        self.player.set_instrument(instrument)
        self.player.note_on(num,hard)
        sleep(self.speed*time)
        self.player.note_off(num,hard)

    def track_append(self,instrument,time,num):
        self.track.append({'instrument':instrument,'time':time,'num':num})

    def set_track(self,track):
        self.track = track

    def play_track(self):
        for tmp in self.track:
            self.play(tmp['instrument'],tmp['time'],tmp['num'])

    def del_player(self):
        del self.player

if __name__ == '__main__':
    CSK_player1 = midi_pla(150)
'''
    CSK_player1.track_append(0,0.5,60)
    player1.track_append(0,0.5,62)
    player1.track_append(0,0.5,64)
    player1.track_append(0,0.5,65)
    player1.track_append(0,1,67)
    player1.track_append(0,0.5,64)
    player1.track_append(0,0.5,62)
    player1.track_append(0,1,60)
    player1.track_append(0,1,57)
    player1.track_append(0,1,57)
    player1.track_append(0,0.5,64)
    player1.track_append(0,0.5,62)
    player1.track_append(0,0.5,60)
    player1.track_append(0,0.5,59)
    player1.track_append(0,0.5,60)
    player1.track_append(0,0.5,62)
    player1.track_append(0,0.5,60)
    player1.track_append(0,0.5,59)
    player1.track_append(0,0.5,60)
    player1.track_append(0,1,62)
    player1.track_append(0,1,64)
    player1.track_append(0,1,65)
    player1.track_append(0,1,67)
'''
CSK_player1.del_player()
pygame.quit()