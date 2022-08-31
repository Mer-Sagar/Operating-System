===================================================
Name : Mer Sagar Bharatkumar
Roll : 21
Subject : Operating System
Assignment 1
Course : MCA-2
===================================================

# 19. The script displays a list of all files in the current directory to which
you have read, write and execute permissions.

echo -e "\n---Displaying All Files in Current Directory---"
ls;

echo -e "\n---Displaying the Files with All Permissions---"
for file in *
do
        if [ -f $file ]
        then
                if [ -r $file -a -w $file -a -x $file ]
                then
                        ls $file;
                fi
        fi
done

============================================================
Output:
============================================================

[mca2121@agni assignment1]$ sh prog19.sh

---Displaying All Files in Current Directory---
arith.sh   prog12.sh  prog16.sh  prog1.sh   prog3.sh  prog7.sh  test.sh
file1.txt  prog13.sh  prog17.sh  prog20.sh  prog4.sh  prog8.sh
prog10.sh  prog14.sh  prog18.sh  prog21.sh  prog5.sh  prog9.sh
prog11.sh  prog15.sh  prog19.sh  prog2.sh   prog6.sh  test

---Displaying the Files with All Permissions---
file1.txt