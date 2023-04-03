#! /bin/bash

source ./inputNumber.sh

zero_val=0
if [ "$val" -gt "$zero_val" ]
   echo "Positive number entered."
else
   echo "The input value is not positive."
fi
