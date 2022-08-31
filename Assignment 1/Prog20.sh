===================================================
Name : Mer Sagar Bharatkumar
Roll : 21
Subject : Operating System
Assignment 1
Course : MCA-2
===================================================

# 20. The script receives any number of filenames as arguments. It should checkw
# hether every argument supplied is a file or directory. If it is a directory, its
# hould be reported. If it is a filename then name of the file as well as the numb
# er of lines present in it should be reported.


echo -n "Enter file or directory name : "
read path

if [ -d $path ]; then                            # for directory
   echo "$path is a directory"
elif [ -f $path ]; then                         # for file
   echo "$path is a file"
   lines=$(wc -l $path)
   echo "number of lines is $lines"
else
   echo "$path is neither file nor directory"
fi






============================================================
Output:
============================================================


[mca2121@agni assignment1]$ sh prog20.sh
Enter file or directory name : prog2.sh
prog2.sh is a file
number of lines is 59 prog2.sh

[mca2121@agni assignment1]$ sh prog20.sh
Enter file or directory name : prog222.sh
prog222.sh is neither file nor directory

[mca2121@agni assignment1]$ mkdir test
[mca2121@agni assignment1]$ sh prog20.sh
Enter file or directory name : test
test is a directory

[mca2121@agni assignment1]$ sh prog20.sh
Enter file or directory name : test2
test2 is neither file nor directory