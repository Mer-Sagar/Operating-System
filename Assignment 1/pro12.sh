===================================================
Name : Mer Sagar Bharatkumar
Roll : 21
Subject : Operating System
Assignment 1
Course : MCA-2
===================================================

# 12.  The distance between two cities is input through the keyboard. (in km).
#	   Write a program to convert this distance into metres, feet, inches and centimetres and display the results.

i="y"

echo -n "Enter distance in km : "
read km

echo "1. Convert into meters"
echo "2. Convert into centemeters"
echo "3. Convert into feet"
echo "4. Convert into inches"

while [ $i = "y" ]
do
        echo -e -n "\nEnter your choice : "
        read ch

        case $ch in
        1) echo " $km km=$[ $km * 1000 ] meters";;
        2) echo " $km km  = $[ $km * 1000 * 100 ] cm";;
        3) echo " $km km  = $[ $km * 3281 ] feet";;
        4) echo " $km km  = $[ $km * 3281 * 12 ] inches " ;;

        esac

        echo " "
        echo -n "Do you wnat to continue [y/n] : "
        read i

done


# =============================================
# Output:

 /home/mobaxterm/assignmet >> sh pro12.sh

Enter distance in km : 21
1. Convert into meters
2. Convert into centemeters
3. Convert into feet
4. Convert into inches

Enter your choice : 1
 21 km=21000 meters

Do you wnat to continue [y/n] : y

Enter your choice : 2
 21 km  = 2100000 cm

Do you wnat to continue [y/n] : y

Enter your choice : 3
 21 km  = 68901 feet

Do you wnat to continue [y/n] : y

Enter your choice : 4
 21 km  = 826812 inches

Do you wnat to continue [y/n] : n
                                    