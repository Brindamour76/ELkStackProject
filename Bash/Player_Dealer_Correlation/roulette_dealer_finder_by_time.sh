#!/bin/bash

#######################################################################################################################
#Script Name	:Roulette Dealer Finder by Time
#Description	:desgined to scan the logs files to find which dealer was scheduled at a particular time
#Args		:$1 Time in format "HH:MM:SS AM"
#		:$2 Date in four digit format, month then day EG 0315 for March 15th 
#Author		:Me
#Created	:5th June 2021
#Revised	:
#######################################################################################################################


#grep "$1" $2_Dealer_schedule | awk -F '\t' '{print $1 " - "  $3}' | cat >> Dealers_working_during_major_losses

echo "The dealer at the roulette table at " $1 " on " $2 " is:"
grep "$1" $2_Dealer_schedule | awk -F '\t' '{print $1 " - "  $3}' 

echo done

