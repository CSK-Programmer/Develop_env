import os
from sys import argv

ffmpeg_path = "C:/Users/Administrator/Desktop/ffmpeg/bin/ffmpeg.exe"
output_path = "C:\\Users\\Administrator\\Music\\ffmpeg_batch_out_m4a"


if len(argv) >= 2:
    if os.path.isdir(argv[1]):
        for root, dirs, files in os.walk(argv[1]):
            for file in files:
                if os.path.splitext(file)[1] == '.mp3':
                    file_full_path = f'{root}\\{file}'
                    file_output_path = f'{output_path}\\{os.path.splitext(file)[0]}.m4a'
                    command = f'{ffmpeg_path} -i "{file_full_path}" -vn -ab 96k "{file_output_path}"'
                    os.system(command)