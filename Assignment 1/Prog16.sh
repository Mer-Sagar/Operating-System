===================================================
Name : Mer Sagar Bharatkumar
Roll : 21
Subject : Operating System
Assignment 1
Course : MCA-2
===================================================

#16. Write a shell script to display the menu driven interface :-
#1) list all files of the current directory
#2) print the current directory
#3) print the date
#4)print the users otherwise display "Invalid Option".




i="y"

while [ $i = "y" ]
do
        echo "1. list"
        echo "2. current working directory"
        echo "3. Print the date "
        echo "4. users"

        echo -n "Enter your choice : "
        read ch

        case $ch in
                1)ls;;
                2)pwd;;
                3)echo "$(date +%d)-$(date +%m)-$(date +%y)";;
                4)id;;
                *)echo "Invalid Choice";;
        esac
        echo -e -n "\n Do you want to continue? [y/n] :- "
        read i
echo ""

done


============================================================
Output:
============================================================

[mca2121@agni assignment1]$ sh prog16.sh
1. list
2. current working directory
3. Print the date
4. users
Enter your choice : 1
arith.sh   prog12.sh  prog1.sh  prog4.sh  prog8.sh
prog10.sh  prog14.sh  prog2.sh  prog5.sh  prog9.sh
prog11.sh  prog16.sh  prog3.sh  prog7.sh  test.sh

 Do you want to continue? [y/n] :- y

1. list
2. current working directory
3. Print the date
4. users
Enter your choice : 2
/home/mca2121/assignment1

 Do you want to continue? [y/n] :- y

1. list
2. current working directory
3. Print the date
4. users
Enter your choice : 3
07-06-22

 Do you want to continue? [y/n] :- y

1. list
2. current working directory
3. Print the date
4. users
Enter your choice : 4
uid=2216(mca2121) gid=2216(mca2121) groups=2216(mca2121)

 Do you want to continue? [y/n] :- n