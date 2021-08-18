#!/bin/bash

grep "02:00:00 PM" 0312_Dealer_schedule | awk -F '\t' '{print $1 " - " $3}' | cat >> Dealers_working_during_losses

echo done

