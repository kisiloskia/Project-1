#!/bin/bash



time=$1
suffix=$2
date=$3

if [ $4 == Roulette ]

then

output=$(cat "$date"_Dealer_schedule | grep ""$time" "$suffix"" | awk '{print $1,$2,$5,$6}') 

fi

if [ $4 == Poker ]

then

output=$(cat "$date"_Dealer_schedule | grep ""$time" "$suffix"" | awk '{print $1,$2,$7,$8}') 

fi

if [ $4 == BlackJack ]

then

output=$(cat "$date"_Dealer_schedule | grep ""$time" "$suffix"" | awk '{print $1,$2,$3,$4}') 

fi




printf "$output\n"
