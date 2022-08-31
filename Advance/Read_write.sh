i="y"

while [ $i = "y" ]
do
	echo "1) To Write "
	echo "2) To Read "
	echo "Enter Choice : "
	read choice

	case $choice in 

	1) echo "ENter File Name to write : "
	   read fnam

	   echo "Enter Contant  : "
	   read cont

	   echo $cont>>$fnam 
	   echo `cat $fnam`
	   ;;

	2) echo "Enter file name for read : "
	   read fname
		
	   while read line
	   do
		echo $line
	   done<$fname
		;;

	

	esac

	echo "Do you wnt to conti.."
	read i

done
