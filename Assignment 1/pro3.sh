======================================================================
Name : Mer Sagar B.
Roll : 21
Sem  : 2
Subject : Oprating System
Assignment 1
======================================================================

#3. Write a script to reverse a six-digit number.


echo -e -n "Enter six digit Number : "
read num
rev=0
while [ $num -gt 0 ]
do
        digit=$(( $num % 10 ))
        rev=`expr $rev \* 10 + $digit`
#       echo -n "$digit"
        num=$(( $num / 10 ))

done
echo "Reversed Number is :  $rev"


======================================================================
# Output:
 >/home/mobaxterm/assignment >> sh pro3.sh
Enter six digit Number : 123456
Reversed Number is :  654321
                                