#!/bin/bash
# copy the /usr/bin directory listing to a log file
today=$(date +%y%m%d)
echo $today
# mkdir -p ./log
ls -al /usr/bin > ./log/log.$today