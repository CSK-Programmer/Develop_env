import os
from sys import argv

ffmpeg_path = "C:/Users/Administrator/Desktop/ffmpeg/bin/ffmpeg.exe"

if len(argv) >= 2:
    if os.path.isfile(argv[1]):
        if os.path.splitext(argv[1])[1] == '.mp3':
            command = f'{ffmpeg_path} -i "{argv[1]}" -vn -ab 96k "{os.path.splitext(argv[1])[0]}.m4a"'
            os.system(command)