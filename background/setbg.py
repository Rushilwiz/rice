#!/bin/python

import os
import time

bg_dir = "/home/rushil/.rice/background/ghibli"

bgs = sorted([f for f in os.listdir(bg_dir) if os.path.isfile(os.path.join(bg_dir, f))])
assert len(bgs) == 180, "we need 180 backgrounds lol"

current_time = time.localtime()
second_of_day = ((current_time.tm_hour - 4) % 24) * 3600 + current_time.tm_min * 60 + current_time.tm_sec

total_seconds = 86400

idx = second_of_day * 180 // total_seconds

selected_bg = bgs[idx]

os.system(f"/home/rushil/.config/polybar/scripts/pywal.sh {os.path.join(bg_dir, selected_bg)}")

print(f"It's {current_time.tm_hour:02}:{current_time.tm_min:02}:{current_time.tm_sec:02}, setting to {idx}")
