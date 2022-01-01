import time

detail = True

def select_mode():
    while(True):
        mode_str = input(u"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nInput a number to select a mode.\n0    start calculating biggest common factor\n1    show details to me\n2    Don't show details to me\n3    start calculating least common multiple(New!)\n4    exit\n\nmode ")
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

def calculate(bigger_num,smaller_num,mode = False):
    start_time = time.time()
    a0 = bigger_num
    b0 = smaller_num
    a,b = a0,b0
    c = 0
    step = 0
    details = []
    while(True):
        step+=1
        c = a % b
        details.append([step,a,b,c])
        if(c == 0):
            stop_time = time.time()
            break
        else:
            a=b
            b=c
    work_time = stop_time-start_time
    if detail:
        for detail_tmp in details:
            print_details(detail_tmp[0],detail_tmp[1],detail_tmp[2],detail_tmp[3])
    if not mode:
        print(f'({a0},{b0})={b}')
    else:
        b = a0 * b0 / b
        print(f'[{a0},{b0}]={b}')
    print(f'Use {work_time} seconds.')
    time.sleep(step * 2 + 5)

def start():
    global detail
    while(True):
        mode = select_mode()
        if mode == 0:
            while(True):
                a_str = input(u'\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nInput number1\n')
                try:
                    a = int(a_str)
                except ValueError:
                    print(u'Please input a number')
                    time.sleep(3)
                    continue
                break
            while(True):
                b_str = input(u'\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nInput number2.It must be smaller than number1\n')
                try:
                    b = int(b_str)
                except ValueError:
                    print(u'Please input a number\n')
                    time.sleep(3)
                    continue
                break
            if(a<=b):
                print(u'Error\n')
                time.sleep(3)
                continue
            calculate(a,b,False)
        elif mode == 1:
            detail = True
        elif mode == 2:
            detail = False
        elif mode == 3:
            while(True):
                a_str = input(u'\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nInput number1\n')
                try:
                    a = int(a_str)
                except ValueError:
                    print(u'Please input a number')
                    time.sleep(3)
                    continue
                break
            while(True):
                b_str = input(u'\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nInput number2.It must be smaller than number1\n')
                try:
                    b = int(b_str)
                except ValueError:
                    print(u'Please input a number')
                    time.sleep(3)
                    continue
                break
            b_str = print(u'\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n')
            calculate(a,b,True)
        elif mode == 4:
            break

start()