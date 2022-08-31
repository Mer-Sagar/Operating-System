===================================================
Name : Mer Sagar Bharatkumar
Roll : 21
Subject : Operating System
Assignment 1
Course : MCA-2
===================================================

#	11. Basic salary of a person is input through the keyboard. His dearness allowance is 40% 
#	    of basic salary and house rent is 20% of basic salary. Write a program to calculate the gross pay

echo -n "Enter Basic Salary : "
read sal

da=`echo "scale=2; ( $sal * 40 / 100 )" | bc`
hr=`echo "scale=2; ( $sal * 20 / 100 )" | bc`
total=`echo "scale=2; ( $sal + $da + $hr )" | bc`
echo "Gross pay is $total"

# =============================================
# Output:

 /home/mobaxterm/assignment >> sh pro11.sh
Enter Basic Salary : 12000
Gross pay is 19200.00
