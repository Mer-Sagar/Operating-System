===================================================
Name : Mer Sagar Bharatkumar
Roll : 21
Subject : Operating System
Assignment 1
Course : MCA-2
===================================================

# 8. Write a script to check the string entered by user is palindrome or not

echo -e -n "Enter The String : "
read str

size=${#str}
revStr=""

for (( i=$size; i>=0; i-- ))
do
        revStr=$revStr""${str:$i:1}

done
if [ "$str" = "$revStr" ]
then
        echo "$str is Palindrome "
else
        echo "$str is not Palindrome"
fi


# =============================================
# Output:

[mca2121@agni assignment1]$ sh pro8.sh
Enter The String : sagar
sagar is not Palindrom

[mca2121@agni assignment1]$ sh pro8.sh
Enter The String : naman
naman is Palindrome
