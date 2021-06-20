import time

detail = True

def select_mode():
    while(True):
        mode_str = input(u"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nInput a number to select a mode.\n0    start calculating\n1    show details to me\n2    Don't show details to me\n")
        try:
            mode = int(mode_str)
        except ValueError:
            print(u'Please input a number')
            time.sleep(3)
            continue
        break
    return(mode)

def print_details(step,a,b,c):
    print(f'{step}    {a}Mod{b}={c}')

def calculate(bigger_num,smaller_num):
    a0 = bigger_num
    b0 = smaller_num
    a,b = a0,b0
    c = 0
    step = 0
    while(True):
        step+=1
        c = a % b
        if(detail):
            print_details(step,a,b,c)
        if(c == 0):
            print(f'({a0},{b0})={b}')
            time.sleep(15)
            break
        else:
            a=b
            b=c

def start():
    global detail
    while(True):
        mode = select_mode()
        if mode == 0:
            while(True):
                a_str = input(u'\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nInput number1')
                try:
                    a = int(a_str)
                except ValueError:
                    print(u'Please input a number')
                    time.sleep(3)
                    continue
                break
            while(True):
                b_str = input(u'\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nInput number2.It must be smaller than number1')
                try:
                    b = int(b_str)
                except ValueError:
                    print(u'Please input a number')
                    time.sleep(3)
                    continue
                break
            if(a<=b):
                print(u'Error')
                time.sleep(3)
                continue
            calculate(a,b)
        elif mode == 1:
            detail = True
        elif mode == 2:
            detail = False

start()