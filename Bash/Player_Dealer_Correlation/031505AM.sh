#!/bin/bash

grep "05:00:00 AM" 0315_Dealer_schedule | awk -F '\t' '{print $1 " - " $3}' | cat >> Dealers_working_during_losses

echo done

