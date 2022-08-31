===================================================
Name : Mer Sagar Bharatkumar
Roll : 21
Subject : Operating System
Assignment 1
Course : MCA-2
===================================================

# 17. Two numbers are entered through the keyboard, find the power, one number r
aised to another.

echo -n "Enter Number : "
read n

echo -n "Enter Power : "
read pow

res=1

while [ $pow -gt 0 ]
do
   res=$[ $res * $n ]
   pow=$[ $pow - 1 ]
done

echo "Answer is : $res"


============================================================
Output:
============================================================

[mca2121@agni assignment1]$ sh prog17.sh
Enter Number : 3
Enter Power : 3
Answer is : 27