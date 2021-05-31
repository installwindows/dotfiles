#!/bin/sh
port=8000
if [ -n $1 ]; then
    port=$1
fi
echo $port
python3 -m http.server $port
