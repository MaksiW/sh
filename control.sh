#!/bin/bash
 
cd /home/opt/BitShark/bch
# Check run proccess
if ! pgrep -f "Example.py" > /dev/null
then
    echo "[!] Start new proccess"
    cd /home/opt/BitShark/bch/
    python ./Example.py > /dev/null &
fi
