#!/bin/bash

# used 'bash' instead of 'sh' to use regular expression

if [ "$#" -ne 2 ]; then
    echo "Invalid input: need 2 arguments"
    exit 1
fi

# only accept positive integers
if ! [[ $1 =~ ^[1-9][0-9]*$ ]] || ! [[ $2 =~ ^[1-9][0-9]*$ ]]; then
    echo "Arguments must be positive integers."
    exit 1
fi

row=$1
col=$2

for (( i=1; i<=row; i++ )); do
    for (( j=1; j<=col; j++ )); do
        result=$(( i * j ))
        printf "$i*$j=$result\t "
    done
    echo ""
done
