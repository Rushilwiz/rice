#!/bin/python

import os
import sys

fp = os.path.abspath(sys.argv[1])
os.system(f"/home/rushil/.config/polybar/scripts/pywal.sh {fp}")
