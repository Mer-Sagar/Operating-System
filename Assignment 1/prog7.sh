===================================================
Name : Mer Sagar Bharatkumar
Roll : 21
Subject : Operating System
Assignment 1
Course : MCA-2
===================================================

# 7. Write a script to print content of the file if file exits otherwise print appropriate message

echo -n "Enter File Name : "
read filename

if [ -f $filename ];then


	while read line
	do
			echo $line
	done < $filename

else
   echo "File not found"
fi

============================================================
Output:
============================================================

[mca2121@agni assignment1]$ sh prog7.sh
Enter File Name : prog1.sh
# 1) Write a menu driven shell script for basic arithmetic operations.
i="y"
while [ $i = "y" ]
do
echo -n "Enter the value of a: "
read a

echo -n "Enter the value of b: "
read b

echo "1) Addition"
echo "2) Substraction"
echo "3) Multiplication"
echo "4) Division"
echo "5) Remainder"
echo -n "Enter your choice: "
read choice

case $choice in
1) echo "$a + $b = $(($a + $b))";;
2) echo "$a - $b = $(($a - $b))";;
3) echo "$a arith.sh prog10.sh prog1.sh prog2.sh prog3.sh prog4.sh prog5.sh prog
7.sh prog8.sh prog9.sh test.sh $b = " `expr $a arith.sh prog10.sh prog1.sh prog2
.sh prog3.sh prog4.sh prog5.sh prog7.sh prog8.sh prog9.sh test.sh $b`;;
4) echo "$a / $b = $[$a / $b]";;
5) echo "$a % $b = $[$a % $b]";;
*) echo "Invalid Choice";;
esac
echo -n "Do you want to continue (y/n): "
read i
done

===FILE NOT FOUND===

[mca2121@agni assignment1]$ sh prog7.sh
Enter File Name : prog11.sh
File not found