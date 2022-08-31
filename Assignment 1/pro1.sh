======================================================================
Name : Mer Sagar B.
Roll : 21
Sem  : 2
Subject : Oprating System
Assignment 1
======================================================================


#1. Write a menu driven shell script for basic arithmetic operations.

i="y"

        echo -n "Enter The Value of A : "
        read a

        echo -n "Enter the value of B : "
        read b

        echo "1. Addition"
        echo "2. Substraction "
        echo "3. Multiplication"
        echo "4. Division"


while [ $i = "y" ]
do


        echo -e -n "\nEnter your choice : "
        read choice


        case $choice in
                1)      echo "$a + $b = $(($a + $b))";;
                2)      echo "$a - $b = " `expr $a - $b`;;
                3)      echo "$a * $b = $(($a * $b))";;                 # `expr $a \* $b`
                4)      echo "$a / $b = $[$a / $b]";;
                *)      echo "Invalid Choice";;
        esac

        echo "Do you wnat to continue? [y/n]"
        read i

done


============================================================
Output:
============================================================
[mca2121@agni assignment1]$ sh prog1.sh
Enter The Value of A : 50
Enter the value of B : 5
1. Addition
2. Substraction
3. Multiplication
4. Division

Enter your choice : 1
50 + 5 = 55
Do you wnat to continue? [y/n]
y

Enter your choice : 2
50 - 5 =  45
Do you wnat to continue? [y/n]
y

Enter your choice : 3
50 * 5 = 250
Do you wnat to continue? [y/n]
y

Enter your choice : 4
50 / 5 = 10
Do you wnat to continue? [y/n]
n
[mca2121@agni assignment1]$