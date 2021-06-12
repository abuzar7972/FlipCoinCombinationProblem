#!/bin/bash -x
heads=0
tails=0
read -p "Enter number of loops for execution:: " n
for ((counter=1; counter<=$n; counter++ ))
do
randomCheck=$((RANDOM%2))
if [ $randomCheck -eq 1 ]
	then
	echo "Heads"
	heads=$(($heads+1))
	else
	echo "Tails"
	tails=$(($tails+1))
fi
done
per=$((($heads*100)/$n))
echo "Heads Percentage is equal to:: " $per
per1=$((($tails*100)/$n))
echo "Tails Percentage is equal to:: " $per1
