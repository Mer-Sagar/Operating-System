======================================================================
Name : Mer Sagar B.
Roll : 21
Sem  : 2
Subject : Oprating System
Assignment 1
======================================================================

#4. Write a menu driven shell script to find area of rectangle, triangle, and circle.
i="y"
echo "1. Ractangle"
echo "2. Triangle"
echo "3. Circle"

while [ $i = "y" ]
do
        echo -e -n "\nEnter Your Choice : "
        read choice

        case $choice in
                1)   echo "Enter width : "
                     read width

                     echo "Enter Height :"
                     read height

                     result=$[ $width * $height ]
                     echo "Area of Ractangle is :- $result" ;;

                2)  echo "Enter the Base of Triangle : "
                    read base

                    echo "Enter Height of Triangle :"
                    read height

                    result1=`expr "3.14 * $base * $height"|bc`
                    echo "Area of Triangle is :- $result1"  ;;

                3)  echo "Enter Radius of Circle : "
                    read reduis

                    result=`expr "3.14 * $reduis * $reduis"| bc`
                    echo "Area of Circle is :- $result" ;;

                *)      echo "Invalid Choice";;


        esac
        echo "Do you wnat to continue? [y/n]"
        read i
done


======================================================================
# Output:
 >/home/mobaxterm/assignment >> sh pro3.sh

1. Ractangle
2. Triangle
3. Circle

Enter Your Choice : 3
Enter Radius of Circle :
4
Area of Circle is :- 50.24
Do you wnat to continue? [y/n]
y

Enter Your Choice : 2
Enter the Base of Triangle :
12
Enter Height of Triangle :
3
Area of Triangle is :- 113.04
Do you wnat to continue? [y/n]
y

Enter Your Choice : 1
Enter width :
20
Enter Height :
25
Area of Ractangle is :- 500
Do you wnat to continue? [y/n]
n
                     