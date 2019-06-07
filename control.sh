#!/bin/bash
 
cd /home/opt/BitShark/bch
# Check run proccess
if ! pgrep -f "from_blockchain_into_redis.py" > /dev/null
then
    echo "[!] Start new proccess"
    cd /home/opt/BitShark/bch/
    python ./from_blockchain_into_redis.py > /dev/null &
fi