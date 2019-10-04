#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number

echo " enter a number : "
read firstnum
echo " enter a number again please : "
read secondnum
sum=$((firstnum + secondnum))
diffrence=$((firstnum - secondnum))
product=$((firstnum * secondnum))
remainder=$((firstnum % secondnum))
dividend=$((firstnum / secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum minus $secondnum is $diffrence
$firstnum muliplied by $secondnum is $product
$firstnum modulus $secondnum is $remainder
$firstnum divided by $secondnum gives $dividend with a remainder $remainder
  - More precisely, it is $fpdividend
EOF
