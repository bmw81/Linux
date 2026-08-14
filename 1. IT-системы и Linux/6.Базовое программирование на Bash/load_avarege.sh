#!/bin/bash

while true; do
    echo $(date)
    echo $(cat /proc/loadavg)

    sleep 5
done