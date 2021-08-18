#!/bin/bash

#######################################################################################################################
#Script Name	:Roulette Dealer Finder by Time and Game
#Description	:desgined to scan the logs files to find which dealer was scheduled at a particular time
#Args		:$1 Time in format "HH:MM:SS AM"
#		:$2 Date in four digit format, month then day EG 0315 for March 15th 
#		:$3 game played: 1 for Blackjack, 2 for Roulette, and 3 for Texas Hold'em
#Author		:Me
#Created	:5th June 2021
#Revised	:
#######################################################################################################################


#grep "$1" $2_Dealer_schedule | awk -F '\t' '{print $1 " - "  $3}' | cat >> Dealers_working_during_major_losses

#grep "$1:00:00 $2" $3_Dealer_schedule | awk -F '\t' '{print $1 " - "  $3}' 


if [[ $3 = 1 ]]
then
	echo "The BlackJack dealer at " $1 " on " $2 " is:"
	grep "$1" $2_Dealer_schedule | awk -F '\t' '{print $1 " - "  $2}' #| cat >> Dealers_working_during_major_losses
elif [[ $3 = 2 ]]
then
	echo  "The Roulette dealer at " $1 " on " $2 " is:"
	grep "$1" $2_Dealer_schedule | awk -F '\t' '{print $1 " - "  $3}' #| cat >> Dealers_working_during_major_losses
else
	echo "The Texas Hold'em Dealer at "$1 " on " $2 " is:"
	grep "$1" $2_Dealer_schedule | awk -F '\t' '{print $1 " - "  $4}' #| cat >> Dealers_working_during_major_losses
fi






echo done


