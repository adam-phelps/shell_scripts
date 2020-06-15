#!/bin/bash
# Adam Phelps, simple script to interate over lines in file

MY_SERVICES="./services.txt"
while IFS= read -r ln
do
  systemctl status $ln
done < $MY_SERVICES
