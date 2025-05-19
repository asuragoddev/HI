#!/bin/bash
MIN=$1
MAX=$2
while true; do
    if [ -z "$MAX" ]; then
        python3 app.py $MIN --dataset=dataset.txt
    else
        python3 app.py $MIN,$MAX --dataset=dataset.txt
    fi
    sleep 10
done