#!/bin/bash
. ../lib/base

printNow
= "Hello World"

netCheck https://baidu.com

checkFile aa.tmp

= "HELLO WORLD" > aa.tmp

checkFile aa.tmp
