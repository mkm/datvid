#!/bin/bash

for x in $(seq 1 20)
do
	echo "Test $x"    >> output.txt
	time cp 10mb ask/ >> output.txt
done
