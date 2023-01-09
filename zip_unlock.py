import zipfile,time,threading
 
start_time = time.time()
flag = True # 用于判断线程是否需要终止，为True时程序执行
 
def extract(password, file):
  try:
    password = str(password)
    file.extractall(path='./extract', pwd=password.encode('utf-8'))
    print ("当前压缩密码为：",password)
    end_time = time.time()
    print ('多线程破解压缩包花了%s秒'%(end_time-start_time))
    global flag
    flag = False#成功解压其余线程终止
  except Exception as e:
    pass
def main():
  zfile = zipfile.ZipFile("test.zip", 'r')
  for number in range(0,100000000 ,1):
    if flag:
      thr1 = threading.Thread(target=extract, args=(number, zfile))
      thr2 = threading.Thread(target=extract, args=(number, zfile))
      thr3 = threading.Thread(target=extract, args=(number, zfile))
      thr4 = threading.Thread(target=extract, args=(number, zfile))

      thr1.start()
      thr2.start()
      thr3.start()
      thr4.start()

      thr1.join()
      thr2.join()
      thr3.join()
      thr4.join()

if __name__ == '__main__':
  main()