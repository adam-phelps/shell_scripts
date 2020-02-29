#!/bin/bash

myfile="./services.txt"
while IFS= read -r ln
do
  systemctl status $ln
done < $myfile