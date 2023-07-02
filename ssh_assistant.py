# ssh assistant
import json
import os
import time

hosts_path = 'ssh_hosts.json'
settings = {}
hosts = {}
found_hosts = False

IsWin = None
usag = '''Usage:
conn:    use "ssh" to connect to remote host
cplr:    use "scp" to copy file or dir from local host to remote host
cprl:    use "scp" to copy file or dir from remote host to local host
'''

def write_json(path,data_dict):
    with open(path,'w',encoding='utf-8') as json_fp:
        json.dump(data_dict,json_fp)

def is_file_exist(path):
    if os.path.exists(path):
        return True
    else:
        return False

def get_data(data_list):
    output = {}
    if(type(data_list) == list):
        for data_name in data_list:
            output[f'{data_name}'] = input(f'{data_name}:')
    else:
        output[f'{data_list}'] = input(f'{data_list}:')
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
    global settings,hosts,found_hosts
    get_os_kind()
    if(is_file_exist(hosts_path)):
        print('Welcome\n\tloading hosts...')
        with open(hosts_path,'r',encoding='utf-8') as json_fp:
            """ load hosts """
            settings = json.load(json_fp)
            hosts = settings['host']
            found_hosts = True
        print('OK!\n\n\n\n')
    else:
        print('Load hosts failed!')
    time.sleep(1)
    clean_scr()
    
    while(True):
        oper = input('Operation:')
        if(oper == 'conn'):
            if(found_hosts):
                data = get_data('alias')
                for host in hosts:
                    if(host['alias'] == data['alias']):
                        run_ssh(host['host'],host['user'],host['port'])
                        break
            else:
                data = get_data(['host','user','port'])
                run_ssh(data['host'],data['user'],data['port'])
        elif(oper == 'cplr'):
            if(found_hosts):
                data = get_data('alias')
                for host in hosts:
                    if(host['alias'] == data['alias']):
                        data = get_data(['local_dir','remote_dir'])
                        run_scp(data['local_dir'],host['host'],host['user'],data['remote_dir'],host['port'],False)
                        break
            else:
                data = get_data(['local_dir','remote_host','user','remote_dir','port'])
                run_scp(data['local_dir'],data['remote_host'],data['user'],data['remote_dir'],data['port'],False)
        elif(oper == 'cprl'):
            if(found_hosts):
                data = get_data('alias')
                for host in hosts:
                    if(host['alias'] == data['alias']):
                        data = get_data(['remote_dir','local_dir'])
                        run_scp(data['local_dir'],host['host'],host['user'],data['remote_dir'],host['port'],True)
                        break
            else:
                data = get_data(['remote_dir','remote_host','user','local_dir','port'])
                run_scp(data['local_dir'],data['remote_host'],data['user'],data['remote_dir'],data['port'],True)
        else:
            print(usag)

main()
