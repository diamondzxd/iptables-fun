#!/bin/sh
# Script to achieve 95% packetloss on a Linux host.
# Might be useful to make some nice loss graphs for Smokeping :P

exec "iptables -m statistic --mode random --probability 0.05 -j ACCEPT"
exec "iptables -j DROP"