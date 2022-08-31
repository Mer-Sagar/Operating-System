===================================================
Name : Mer Sagar Bharatkumar
Roll : 21
Subject : Operating System
Assignment 1
Course : MCA-2
===================================================

# 14.  The distance between two cities is input through the keyboard. (in km).
#	   Write a program to convert this distance into metres, feet, inches and centimetres and display the results.

echo -n  "Enter the cost price : "
read cost

echo -n  "Enter seliing price : "
read sel

if [ $cost -lt $sel ]; then
    echo "Profit is of $[ $sel - $cost ]"
elif [ $cost -gt $sel ]; then
    echo "Loss is of $[ $cost - $sel ]"
elif [ $cost -eq $sel ]; then
    echo "No loss, No Profit! nil"
else
    echo "Invalid input"
fi


# =============================================
# Output:

/home/mobaxterm/assignment >> sh pro14.sh
Enter the cost price : 1200
Enter seliing price : 200
Loss is of 1000
                                                                                                                                                                                         ✔

/home/mobaxterm/assignment >> sh pro14.sh
Enter the cost price : 500
Enter seliing price : 10001
Profit is of 9501
                                                                                                                                                                                         ✔

/home/mobaxterm/assignment >> sh pro14.sh
Enter the cost price : 400
Enter seliing price : 400
No loss, No Profit! nil
                              