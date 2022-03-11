#!/bin/bash



time=$1
suffix=$2
date=$3

output=$(cat "$date"_Dealer_schedule | grep ""$time" "$suffix"" | awk '{print $1,$2,$5,$6}') 

echo $output >> Dealers_Working_During_Losses
