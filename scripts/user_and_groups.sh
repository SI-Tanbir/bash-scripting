#!/bin/bash

readarray accounts< <(cat ./user.txt)

for account in "${accounts[@]}"

do  
    user= $(echo $account | cut -d: )

done
