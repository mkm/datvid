#!/bin/bash

for x in $(seq 1 20)
do
	echo "Test $x"    >>output.txt
	time cp 10mb 10mb2 2>>output.txt
done
