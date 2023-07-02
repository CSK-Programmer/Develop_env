import json
import os
import time
from math import sqrt

PN_LIST_PATH = 'prime_numbers.json'
PN_LIST = None

IsWin = None
usge = '''Usage:
show:    show the calculated prime numbers, one number each line.
calc:    calculate new prime numbers, need the calculated numbers. Please make sure they are correct.
'''

def get_os_kind():
    global IsWin
    if(os.name == 'nt'):
        IsWin = True
    else:
        IsWin = False

def is_file_exist(path):
    if os.path.exists(path):
        return True
    else:
        return False

def write_json(path,data_dict):
    with open(path,'w',encoding='utf-8') as json_fp:
        json.dump(data_dict,json_fp)

def clean_scr():
    if(IsWin):
        os.system('cls')
    else:
        os.system('clear')

def try_int(prompt):
    while True:
        try:
            out = int(input(prompt))
        except ValueError:
            print('You input an invaild string! Please input again!')
            continue
        return out
        

def show_PNs(PN_list):
    if(PN_list == None):
        print('There are no prime numbers! We cannot show you anything!')
        time.sleep(5)
        clean_scr()
        return
    for PN in PN_list:
        print(PN)
    input('\nPress any key to continue...')
    clean_scr()
        

def is_PN(num,PN_list):
    if(num%2 == 0):
        # print(num,'2') # For debug
        return False
    
    if(PN_list == None):
        PN_list = range(1, num+1, 2) # The first item will not be used, so we set it to 1, then the second item will be 3. This is what we want
    
    i = 1
    while(True):
        if(PN_list[i] > int(sqrt(num))):
            # print(num,'T') # For debug
            return True

        if(num%PN_list[i] == 0):
            # print(num,'F') # For debug
            return False
        i += 1

def calc_PNs(PN_list, piece):
    if(PN_list == None):
        print('There are no prime numbers! We will give you some!')
        PN_list = [2,3]
        piece -= 2
        print('OK!')
    num = PN_list[len(PN_list)-1] + 2
    while(piece > 0):
        # print('doing:',num,'i:',piece) # For debug
        if(is_PN(num, PN_list)):
            PN_list.append(num)
        piece -= 1
        num += 2
    print('OK!\nWe will store the prime numbers!')
    write_json(PN_LIST_PATH, {'PN_LIST':PN_list})
    # clean_scr()


def main():
    global PN_LIST
    get_os_kind()
    if(is_file_exist(PN_LIST_PATH)):
        print('Welcome\n\tloading prime numbers...')
        with open(PN_LIST_PATH,'r',encoding='utf-8') as json_fp:
            """ load prime numbers """
            PN_LIST = json.load(json_fp)['PN_LIST']
            # print(json.load(json_fp)) # For debug
        print('OK!\n\n\n\n')
        time.sleep(1)
        clean_scr()
    else:
        print('Load prime numbers failed!\nThen you cannot show the prime numbers before you calculate them! \nou cannot use the function calc either!')
        time.sleep(3)
        clean_scr()
    print(usge)
    time.sleep(3)
    clean_scr()
    # print(PN_LIST) # For debug
    while(True):
        oper = input('Operation:')
        if(oper == 'show'):
            show_PNs(PN_LIST)
        elif(oper == 'calc'):
            piece = try_int('How many prime numbers do you want?')
            calc_PNs(PN_LIST, piece)
        else:
            print(usge)

main()