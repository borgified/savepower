#!/usr/bin/env bash

sudo powertop -c -r ~/powertop.html
lynx -dump -width 200 ~/powertop.html | awk -F'echo' '/echo/ {system("echo " $2)}' 
