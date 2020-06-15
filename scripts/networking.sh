#!/bin/bash
# Adam Phelps script to check networking on linux host

#View the routing rules
ip rule show

#View route table
ip route show

#View iptables
iptables -L -v 

#View NAT table
iptables -L -v -t nat

#Get IPv6 address of server
ip -6 a show eth0 | grep -E 'inet6.*global' | awk '{print $2}' | sed 's/\/[1-9]*//g'