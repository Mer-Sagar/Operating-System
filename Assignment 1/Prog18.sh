===================================================
Name : Mer Sagar Bharatkumar
Roll : 21
Subject : Operating System
Assignment 1
Course : MCA-2
===================================================

# 18. Write a script which has the functionality similar to head and tail
# commands.

echo -e "\nEnter File Name: "
read fname

echo -e "\n---Printing File Content---"
cat $fname

echo -n -e "\nThe First Line of File is: "
sed -n '1p' $fname;

echo -n -e "The Last Line of File is: "
sed -n '$p' $fname;

============================================================
Output:
============================================================

[mca2121@agni assignment1]$ sh prog18.sh

Enter File Name:
file1.txt

---Printing File Content---
first
second
third
fourth
fifth

The First Line of File is: first
The Last Line of File is: fifth
[mca2121@agni assignment1]$