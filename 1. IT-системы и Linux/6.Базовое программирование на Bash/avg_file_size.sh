#!/bin/bash

# set -x


avg_size() {
    if [ -d $1 ]; then
        size=0;
        counter=0;

        for item in "$@"/*; do
            if [ -f "$item" ]; then
                # echo "$item"
                (( size += $(stat -c "%s" "$item")))
                # echo $size
                (( counter++ ))
                # echo $counter
            fi
        done

        echo "This folder's avg file size is:" $(( size / counter ))
    else
        echo "This directory not exist!"
    fi
}

avg_size $1