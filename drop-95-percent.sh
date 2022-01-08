#!/bin/sh
# Script to achieve 95% packetloss on a Linux host.
# Might be useful to make some nice loss graphs for Smokeping :P

echo "iptables -m statistic --mode random --probability 0.05 -j ACCEPT"
echo "iptables -j DROP"