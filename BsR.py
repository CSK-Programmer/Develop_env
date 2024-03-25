from os import system
from random import choice, randrange

BULLET_GROUPS = [[1,1],[1,2], [3,2], [4,4]]
HP_MAX = [2,4,6]
ITEMS_LIST = ['cigarette', 'hand saw', 'magnifying glass', 'handcuffs', 'beer']
ITEMS_ONCE = [0, 2, 4]

game_round = 0
bullet_list = []
bullet_r = 0
bullet_i = 0

chance_player = 0
chance_dealer = 0

HP_max_round = 0
HP_player = 0
HP_dealer = 0

items_once_round = 0
items_player = []
items_dealer = []
hs_used = False

def gen_bullets(bullet_r, bullet_i):
    tmp_r, tmp_i = bullet_r, bullet_i
    bullet_list = []
    while(tmp_r + tmp_i):
        if(randrange(0, tmp_r + tmp_i) < tmp_r):
            bullet_list.append(True)
            tmp_r -= 1
        else:
            bullet_list.append(False)
            tmp_i -= 1
    return bullet_list

def insert_bullets():
    global bullet_r, bullet_i, bullet_list
    bullet_list = []
    tmp_bullet_group = choice(BULLET_GROUPS)
    bullet_r, bullet_i = tmp_bullet_group[0], tmp_bullet_group[1]
    bullet_list = gen_bullets(bullet_r, bullet_i)
    print(f"I inserted {bullet_r} real bullet(s) and {bullet_i} fake bullet(s).\nNow we start.You fisrt")
    # print(bullet_list)
    chance_player, chance_dealer = 1,0

def check_bullets():
    if(len(bullet_list) == 0):
        insert_bullets()

def give_items(num):
    for i in range(0,num):
        if(len(items_player)) < 8:
            items_player.append(choice(ITEMS_LIST))
        if(len(items_dealer)) < 8:
            items_dealer.append(choice(ITEMS_LIST))

def new_game_round():
    HP_max_round = HP_MAX[game_round]
    HP_player = HP_MAX[game_round]
    HP_dealer = HP_MAX[game_round]
    items_once_round = ITEMS_ONCE[game_round]
    items_player = []
    items_dealer = []
    game_round += 1
    insert_bullets()
    give_items(items_once_round)

def check_HP():
    if(HP_dealer <= 0):
        print("Dealer died!")
        new_game_round()
    if(HP_player <= 0):
        print("You died!")
        # 尚未加入结束机制


def shoot(to_dealer,from_dealer):
    global HP_dealer, HP_player, hs_used
    if(to_dealer):
        if(bullet_list[0]):
            if(hs_used):
                HP_dealer -= 2
                hs_used = False
            else:
                HP_dealer -= 1
            if(from_dealer):
                if(chance_dealer == 1):
                    chance_dealer, chance_player = 0,1
                    give_items(items_once_round)
                elif(chance_dealer == 2):
                    chance_dealer = 1
            elif(chance_player == 2):
                chance_player = 1
            elif(chance_player == 1):
                chance_dealer, chance_player = 1,0
            bullet_r -= 1
        else:
            if(from_dealer):
                chance_dealer = 1
            elif(chance_player == 2):
                chance_player = 1
            elif(chance_player == 1):
                chance_dealer, chance_player = 1,0
            bullet_i -= 1
    else:
        if(bullet_list[0]):
            if(hs_used):
                HP_player -= 2
                hs_used = False
            else:
                HP_player -= 1
            if((not from_dealer) and chance_player == 2):
                chance_player = 1
            elif(not from_dealer and chance_player == 1):
                chance_dealer, chance_player = 1,0
            elif(chance_dealer == 2):
                chance_player = 1
            elif(chance_dealer == 1):
                chance_dealer, chance_player = 0,1
                give_items(items_once_round)
            bullet_r -= 1
        else:
            if(not from_dealer):
                chance_player = 1
            elif(chance_dealer == 2):
                chance_dealer = 1
            elif(chance_dealer == 1):
                chance_dealer, chance_player = 0,1
                give_items(items_once_round)
        bullet_i -= 1
    bullet_list.pop(0)

    hs_used = False
    # comment to enable "直到打出实弹才解除翻倍"

    check_HP()
    check_bullets()

def player_shoot():
    if(input("Input everything first to shoot at yourself. Then press enter") == ""):
        to_dealer = True
    else:
        to_dealer = False
    shoot(to_dealer)
    


def use_item(item):
    pass

def choose_item():
    system("cls")
    if(items_dealer != []):
        item_idx = 0
        print("Dealer's items:")
        for items in items_dealer:
            print(f"{item_idx}|{items}")
            item_idx += 1
    if(items_player != []):
        print("\n\n\nYour items:")
        item_idx = 0
        for items in items_player:
            print(f"{item_idx}|{items}")
            item_idx += 1
        item_res = input("Which item would you like?(input the number before.input other thing to shoot now.)")
        try:
            item_idx = int(item_res)
            if(item_idx >= 0 and item_idx < len(items_player)):
                use_itme(items_player[item_idx])
            else:
                player_shoot()
        except:
            player_shoot()
    else:
        player_shoot()

def main():
    pass

main()