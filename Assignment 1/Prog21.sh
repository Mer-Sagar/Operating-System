===================================================
Name : Mer Sagar Bharatkumar
Roll : 21
Subject : Operating System
Assignment 1
Course : MCA-2
===================================================

# 21. Display the dates falling on Sundays of the current month.
#sun=$(cal | cut -b 1-2)
#echo $sun
#echo $(cal | cut -b 1-2)
echo -e "\n\n---Displaying Sunday Dates of Current Month---"
cal | cut -b 1-2


============================================================
Output:
============================================================

[mca2121@agni assignment1]$ sh prog21.sh


---Displaying Sunday Dates of Current Month---

Su

 5
12
19
26




[mca2121@agni assignment1]$ cal
      June 2022
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 

[mca2121@agni assignment1]$ cal | tail -n 7
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30

[mca2121@agni assignment1]$ cal | tail -n 7 | cut -b 13-14
Th
 2
 9
16
23
30

[mca2121@agni assignment1]$ cal | cut -b 13-14 | tail -n 7
Th
 2
 9
16
23
30
30