# ssh assistant
import os

IsWin = None
usag = '''Usage:
conn:    use "ssh" to connect to remote host
cplr: use "scp" to copy file or dir from local host to remote host
cprl: use "scp" to copy file or dir from remote host to local host
'''

def get_data(data_list):
    output = {}
    for data_name in data_list:
        output[f'{data_name}'] = input(f'{data_name}:')
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
    clean_scr()
    
def run_scp(local_dir,host,user,remote_dir,port,remote_to_local=False):
    if(remote_to_local):
        os.system(f'scp -P{port} {user}@{host}:{remote_dir} "{local_dir}"')
    else:
        os.system(f'scp -P{port} "{local_dir}" {user}@{host}:{remote_dir}')

def main():
    get_os_kind()
    while(True):
        oper = input('Operation:')
        if(oper == 'conn'):
            data = get_data(['host','user','port'])
            run_ssh(data['host'],data['user'],data['port'])
        elif(oper == 'cplr'):
            data = get_data(['local_dir','remote_host','user','remote_dir','port'])
            run_scp(data['local_dir'],data['remote_host'],data['user'],data['remote_dir'],data['port'],False)
        elif(oper == 'cprl'):
            data = get_data(['remote_host','user','remote_dir','local_dir','port'])
            run_scp(data['local_dir'],data['remote_host'],data['user'],data['remote_dir'],data['port'],True)
        else:
            print(usag)

main()