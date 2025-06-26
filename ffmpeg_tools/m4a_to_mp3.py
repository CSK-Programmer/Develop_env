import os
from sys import argv

ffmpeg_path = "C:/Users/Administrator/Desktop/ffmpeg/bin/ffmpeg.exe"

if len(argv) >= 2:
    if os.path.isfile(argv[1]):
        if os.path.splitext(argv[1])[1] == '.m4a':
            command = f'{ffmpeg_path} -i "{argv[1]}" "{os.path.splitext(argv[1])[0]}.mp3"'
            os.system(command)