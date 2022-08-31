===================================================
Name : Mer Sagar Bharatkumar
Roll : 21
Subject : Operating System
Assignment 1
Course : MCA-2
===================================================

# 10. Write a script to display the student marksheet in appropriate format.

echo -e "\nStudent's Marksheet Program"
read java
echo -e -n "Enter Marks for ML: "
read ml
echo -e -n "Enter Marks for AI: "
read ai
echo -e -n "Enter Marks for DA: "
read da
tot=$(($os + $java + $ml + $ai + $da))
per=$(($tot/5))
echo -e "\n--------------------------------------"
echo "Student's Marksheet"
echo "--------------------------------------"
echo "Student's Name:   $name"
echo "Roll No:  $roll"
echo "OS:               $os"
echo "Java:             $java"
echo "ML:               $ml"
echo "AI:               $ai"
echo "DA:               $da"
echo "Total Marks:      $tot"
echo "Percentage:       $per%"

if [ $os -gt 35 ] && [ $java -gt 35 ] && [ $ml -gt 35 ] && [ $ai -gt 35 ] && [ $
da -gt 35 ]
then
        echo "RESULT:           PASS"
else
        echo "RESULT:           FAIL"
fi
echo "--------------------------------------"

============================================================
Output:
============================================================

==================================PASS RESULT==================================

[mca2121@agni assignment1]$ sh prog10.sh

Student's Marksheet Program
Enter Name: Akshit Trivedi
Enter Roll No: 21


---Enter Student Marks (Out of 100)---
Enter Marks for OS: 95
Enter Marks for Java: 91
Enter Marks for ML: 92
Enter Marks for AI: 95
Enter Marks for DA: 85

--------------------------------------
Student's Marksheet
--------------------------------------
Student's Name: Akshit Trivedi
Roll No:        21
OS:             95
Java:           91
ML:             92
AI:             95
DA:             85
Total Marks:    458
Percentage:     91%
RESULT:         PASS
--------------------------------------


==================================FAIL RESULT==================================


[mca2121@agni assignment1]$ sh prog10.sh

Student's Marksheet Program
Enter Name: Akshit
Enter Roll No: 21


---Enter Student Marks (Out of 100)---
Enter Marks for OS: 22
Enter Marks for Java: 80
Enter Marks for ML: 75
Enter Marks for AI: 95
Enter Marks for DA: 55

--------------------------------------
Student's Marksheet
--------------------------------------
Student's Name: Akshit
Roll No:        21
OS:             22
Java:           80
ML:             75
AI:             95
DA:             55
Total Marks:    327
Percentage:     65%
RESULT:         FAIL
--------------------------------------