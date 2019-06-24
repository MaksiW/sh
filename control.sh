#!/bin/bash
 
cd /home/opt/bch
# Check run proccess
if ! pgrep -f "Example.py" > /dev/null
then
    echo "[!] Start new proccess"
    cd /home/opt/bch/
    python ./Example.py > /dev/null &
fi
