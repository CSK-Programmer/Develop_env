# ssh assistant
import os

IsWin = None
usage = '''Usage:
conn:    use "ssh" to connect to remote host
copy_lr: use "scp" to copy file or dir from local host to remote host
copy_rl: use "scp" to copy file or dir from remote host to local host
'''

def get_data(data_list):
    for data_name in data_list:
        output = {}
        output[date_name] = input(f'{data_name}:')
    return output


def get_os_kind():
    global IsWin
    if(os.name == 'nt'):
        IsWin = True
    else:
        IsWin = False

def clean_scr():
    if(IsWin):
        os.system('cls')
    else:
        os.system('clear')

def run_ssh(host,user,port):
    clean_scr()
    os.system(f"ssh {user}@{host} -p {port}")
    
def run_scp(local_dir,host,user,remote_dir,port,remote_to_local=False):
    clean_scr()
    if(remote_to_local):
        os.system(f'scp -P{port} {user}@{host}:{remotedir} "{local_dir}"')
    else:
        os.system(f'scp -P{port} "{local_dir}" {user}@{host}:{remotedir}')

def main():
    get_os_kind()
    while(True):
        oper = input('Operation:')
        if(oper == 'conn'):
            run_ssh()
        elif(oper == 'copylr'):
            run_scp()
        elif(oper == 'copyrl'):
            run_scp()
        elif(oper == 'usage'):
            print()

print(get_data(['isjgf','jgksdfhfd']))