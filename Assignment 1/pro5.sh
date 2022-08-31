===================================================
Name : Mer Sagar Bharatkumar
Roll : 21
Subject : Operating System
Assignment 1
Course : MCA-2
===================================================

# 5. Write a script to print message like good morning, good afternoon, ….etc 
#    according to the current time. 

time="$(date +%T | cut -d : -f 1 )"
#time="$(date +%H)"

echo $time
if [ $time -gt 4 -a $time -lt 12 ]; then
        echo "Good Morning!"
elif [ $time -gt 12 -a $time -lt 16 ]; then
        echo "Good Afternoon!"
elif [ $time -gt 16 -a $time -lt 20 ]; then
        echo "Good Evening!"
else
        echo "Good Night!"
fi



# =============================================
# Output:
[mca2121@agni assignment1]$ sh pro5.sh
03
Good Night!
[mca2121@agni assignment1]$ sh pro5.sh