#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data
# TASK 2: Improve it by rewriting it to use the if command
# TASK 3: Improve it by giving them 3 tries to get it right before failing (test 3 times but only if necessary)
#           *** Do not use the exit command
actualpasswd="spc"
tries=3
while [ $tries -ne 0 ]
do
echo "i bet you can't guess my password, try it now you have 3 chances"
read gpass
if [ "$gpass" == "$actualpasswd" ]; then
 echo "hmmm!! you are good at this cuz the passwords you guessed is correct"
break
else
  echo "hahahah you are wrong, try again"
  tries=$(( $tries - 1 ))
  echo "you have $tries chances left"
fi
done
echo "========"
echo "you failed"

#[ $myString = $referenceString ] && echo "You guessed the password!" || echo "The password eludes you..."
