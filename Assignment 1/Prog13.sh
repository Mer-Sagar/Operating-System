===================================================
Name : Mer Sagar Bharatkumar
Roll : 21
Subject : Operating System
Assignment 1
Course : MCA-2
===================================================

# 13. The script will receive the filename or filename with its full path, the s
cript should obtain information about this file as given by "ls -l" and display
it in proper format. e.g., Filename : , File access permissions : , Number of li
nks : , Owner of the file : , Group to which belongs : Size of file : , File mod
ification date : , File modification time : .
echo "Enter FileName (with Full Path): "
read fname

if [ -f $fname ]
then
        ls -l $fname
else
        echo "File Doesn't Exist!!! "
fi

============================================================
Output:
============================================================

[mca2121@agni assignment1]$ sh prog13.sh
Enter FileName (with Full Path):
file1.txt

-rw-rw-r-- 1 mca2121 mca2121 32 Jun  8 06:18 file1.txt