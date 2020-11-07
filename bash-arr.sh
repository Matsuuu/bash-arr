#!/bin/bash

PARAMS=()
SELECTED=()
# Set params
for p in "$@";do
    PARAMS+=("$p")
done

print_params() {    
    for val in "${PARAMS[@]}"
    do
        echo "[ ]" $val
    done
}

select opt in "${PARAMS[@]}"
do
    echo $opt
done

print_params
