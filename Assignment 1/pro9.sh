===================================================
Name : Mer Sagar Bharatkumar
Roll : 21
Subject : Operating System
Assignment 1
Course : MCA-2
===================================================

# 9. Write a script to check given number is prime or not

echo -e -n "Enter number : "
read num

for ((i=2; i<=num/2; i++))
do
        if [ $((num%i)) -eq 0 ]
        then
                echo "$num is not Prime Number"
        exit
        fi

done

echo "$num is a prime number"

# =============================================
# Output:


[mca2121@agni assignment1]$ sh pro9.sh
Enter number : 48
48 is not Prime Number

[mca2121@agni assignment1]$ sh pro9.sh
Enter number : 11
11 is a prime number
