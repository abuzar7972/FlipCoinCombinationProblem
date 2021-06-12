#!/bin/bash -x
HH=1
HT=1
TH=1
TT=1
read -p "Enter number of loops for execution:: " n
for ((counter=1; counter<=$n; counter++ ))
do
	randomCheck=$((RANDOM%4))
	if [ $randomCheck -eq 0 ]
		then
		echo "HH"
		HH=$(($HH+1))
	fi
	if [ $randomCheck -eq 1 ]
	then
		echo "HT"
		HT=$(($HT+1))
	fi
	if [ $randomCheck -eq 2 ]
     	then
		echo "TH"
       		TH=$(($TH+1))
	fi
	if [ $randomCheck -eq 3 ]
        then
		echo "TT"
       		TT=$(($TT+1))
	fi
done
per0=$((($HH*100)/$n))
echo "HH Percentage is equal to:: " $per0
per1=$((($HT*100)/$n))
echo "HT Percentage is equal to:: " $per1
per2=$((($TH*100)/$n))
echo "TH Percentage is equal to:: " $per2
per3=$((($TT*100)/$n))
echo "HH Percentage is equal to:: " $per3
