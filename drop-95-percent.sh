#!/bin/sh
# Script to achieve 95% packetloss on pinging a Linux host.
# Might be useful to make some nice loss graphs for Smokeping :P
# Only drops ICMP Ping traffic.

exec "sudo iptables -A INPUT -p icmp --icmp-type echo-request -m statistic --mode random --probability 0.95 -j DROP"