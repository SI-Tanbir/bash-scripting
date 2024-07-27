#!/bin/bash

readarray -t contents< <(ls /etc/)

for i in "${contents[@]}"

do
    echo "show this information";
    sleep 1;
    echo "$i"
done