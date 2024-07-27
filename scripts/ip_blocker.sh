#!/usr/bin/bash

echo "blocking $1 addresss "
iptables -I INPUT -s $1 -j DROP
