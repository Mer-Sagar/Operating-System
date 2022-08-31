===================================================
Name : Mer Sagar Bharatkumar
Roll : 21
Subject : Operating System
Assignment 1
Course : MCA-2
===================================================

# 15. The script receives two file names as arguments, the script must check
# whether the files are same or not, if they are similar then delete the second
# file

read -p "Enter File1:  " f1
read -p "Enter File2:  " f2

if cmp -s "$f1" "$f2";
then
        echo "Both Files are Same."
        rm $f2
else
        echo "Both Files are Different."
fi

============================================================
Output:
============================================================

[mca2121@agni assignment1]$ ls
arith.sh   prog11.sh  prog15.sh  prog20.sh  prog4.sh  prog8.sh
file1.txt  prog12.sh  prog16.sh  prog21.sh  prog5.sh  prog9.sh
file2.txt  prog13.sh  prog17.sh  prog2.sh   prog6.sh  test
prog10.sh  prog14.sh  prog1.sh   prog3.sh   prog7.sh  test.sh

[mca2121@agni assignment1]$ sh prog15.sh
Enter File1:  file1.txt
Enter File2:  file3.txt
Both Files are Different.

[mca2121@agni assignment1]$ sh prog15.sh
Enter File1:  file1.txt
Enter File2:  file2.txt
Both Files are Different.

[mca2121@agni assignment1]$ cat file1.txt
first
second
third
fourth
fifth

[mca2121@agni assignment1]$ cat file2.txt
first
second
third
fourth
fifth

[mca2121@agni assignment1]$ sh prog15.sh
Enter File1:  file1.txt
Enter File2:  file2.txt
Both Files are Same.

[mca2121@agni assignment1]$ ls
arith.sh   prog12.sh  prog16.sh  prog21.sh  prog5.sh  prog9.sh
file1.txt  prog13.sh  prog17.sh  prog2.sh   prog6.sh  test
prog10.sh  prog14.sh  prog1.sh   prog3.sh   prog7.sh  test.sh
prog11.sh  prog15.sh  prog20.sh  prog4.sh   prog8.sh