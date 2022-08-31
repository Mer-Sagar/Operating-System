======================================================================
Name : Mer Sagar B.
Roll : 21
Sem  : 2
Subject : Oprating System
Assignment 1
======================================================================

#2. Write a menu driven shell script for remove, rename, copy and modify a file.


i="y"
       
        echo "1. Remove File "
        echo "2. Rename File "
        echo "3. Copy File "
		echo "4. Modify File"
		echo "5. List"
		
		

while [ $i =. "y" ]
do
	 echo -e -n "\nEnter your choice : "
     read choice
	 
	 case $choice in
		
			1) echo -e "\n Enter File Name : "
			   read filenm
			   
			   rm $filenm			   
			   
			   echo "file has been removed successfully";;
			
			2) echo -e "\n Enter File Name : "
			   read oldname
			   
			   echo -e "\n Enter new File Name  with extenstion : "
			   read newfilename
			   
			   mv $oldname $newfilename 						#mv oldname newfilename
			   
			   echo "file has been Rename successfully";;
			   
			3) echo -e "\n Enter File Name : "
			   read filenm3
			   
			   echo -e "\n Enter File Name  for copy: "
			   read filenmcp			   
			   
			   cp $filenm3 $filenmcp
			   
			   echo "file has been Copy successfully";;
			   
			4) echo -e "\n Enter File Name : "
			   read filenm4
			   
			   vi $filenm4;;
			   
			5) ls ;;
			
			*) echo "Invalid Choice";; 
			
		esac 
			   
		echo "Do you wnat to continue? [y/n]"
        read i     



done
==============================================================================================
Output:

1. Remove File
2. Rename File
3. Copy File
4. Modify File
5. List

Enter your choice : 5
abc.sh   pro2.sh
Do you wnat to continue? [y/n]
y

Enter your choice : 2

 Enter File Name :
abc.sh

 Enter new File Name  with extenstion :
pqr.sh
file has been Rename successfully
Do you wnat to continue? [y/n]
y

Enter your choice : 5
pqr.sh   pro2.sh
Do you wnat to continue? [y/n]
y

Enter your choice : 3

Enter File Name :
pqr.sh

Enter File Name  for copy:
abcd.txt
file has been Copy successfully
Do you wnat to continue? [y/n]
y

Enter your choice : 5
abcd.txt  pqr.sh    pro2.sh
Do you wnat to continue? [y/n]
y

Enter your choice : 1

 Enter File Name :
pqr.sh
file has been removed successfully
Do you wnat to continue? [y/n]
n
