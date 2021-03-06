#!/bin/bash
# Adam Phelps script to check basics of a linux host health

#Get System Info
hostnamectl

#Get CPU/Mem info and load
top | head -n 2

#View running services
sudo systemctl status | grep 'service\|slice\|target'

#View last journal entries that may be errors
journalctl -n 50 | grep -i "error"

#Check what the services are being listended on
sudo netstat -anp | grep tcp | grep LISTEN

#Check disk space and file system types
df -Th