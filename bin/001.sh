#!/bin/bash
# This script displays the date and who's logged on
echo echo -n "The time and date are: "
date
echo "Let's see who's logged into the system:"
who
echo $SHELL