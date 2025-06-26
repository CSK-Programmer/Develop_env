import os
from sys import argv
import json

config_path = "C:/Users/Administrator/Desktop/ffmpeg/ffmpeg_tools_cfg.json"
ffmpeg_path = "C:/Users/Administrator/Desktop/ffmpeg/bin/ffmpeg.exe"
output_path = "C:\\Users\\Administrator\\Music\\ffmpeg_batch_out_m4a"

if len(argv) >= 2:
    if os.path.isdir(argv[1]):
        with open(config_path,'r',encoding='utf-8') as json_fp:
            """ load settings """
            config = json.load(json_fp)
        # print(config)
        ffmpeg_path = config["ffmpeg_path"]
        output_path = config["batch_out_path_mp3"]
        bitrate = config["mp3_out_bitrate"]
        replace_force = config["replace_force"]
        for root, dirs, files in os.walk(argv[1]):
            for file in files:
                if os.path.splitext(file)[1] == '.m4a':
                    file_full_path = f'{root}\\{file}'
                    file_output_path = f'{output_path}\\{os.path.splitext(file)[0]}.mp3'
                    command = f'{ffmpeg_path} -{replace_force} -i "{file_full_path}" -ab {bitrate} "{file_output_path}"'
                    os.system(command)