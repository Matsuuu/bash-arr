#!/bin/bash

PARAMS=()
SELECTED=()
POINTER=1
SELECTED_COL='\033[32m;47m'
OTHER_COL='\033[0m'
# Set params
for p in "$@";do
    PARAMS+=("$p")
done

print_params() {    
    i=1
    for val in "${PARAMS[@]}"
    do
        if [ "$i" -eq "$POINTER" ]
        then
            echo -e ${SELECTED_COL}"[ ]" $val
        else
            echo -e ${OTHER_COL}"[ ]" $val
        fi
        i=$((i + 1))
    done
}

print_params
