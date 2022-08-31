i="y"

while [ $i="y" ]
do	
	echo -e "\n\n=================================="
	echo "1. Create a File "
	echo "2. Read a File"
	echo "3. Rename a File"
	echo "4. Remove a File "
	echo "5. Copy a File "
	echo "6. Add Data into a File"
	echo "7. Modify data inside the file By id"
	echo "8. Delete file contents By id "
	echo "9. Display File contant By id "
	echo "10. Exit"

	echo -e "\n============================="
	echo -n "Enter Your Choice : "  
	read choice
	echo -e "\n-----------------------------"

	case $choice in 

		1) echo -n "Enter File Name with Extension: "
		   read filenm 

		   vi $filenm
		   ;;

		2) echo -n "Enter File name You want to read  : "
		   read filenm

		   while read line
		   do
			echo $line
		   done < $filenm
		   ;;

		3) echo -n "Enter Old File name :"
		   read filenm

		   echo -n "Enter New File Name : "
		   read new_fnm

		   mv $filenm $new_fnm
		   ;;
		
		4) echo -n "Enter File name which you want to remove :"
		   read filenm

		   rm $filenm
		   ;;

		5) echo -n "Enter Source File Name : "
		   read filenm

		   echo -n "Enter Destination File name (to be Coppied) : "
		   read copy_nm

		   cp $filenm $copy_nm
		   ;;

		6) echo -n "Enter File Name : "
		   read filenm

		   echo -n "Enter Content  : "
		   read cont
			
		   echo $cont >> $filenm
		   ;;

	   	7) echo -n "Enter File Name : "
		   read filenm
		   
		   cat $filenm

		   echo -n -e "\n Which Line you want to Edit ? : "
		   read roll

		   echo -n -e "Enter New name : "
		   read new_dt

		   awk -F"," -v id="$roll" -v value="$new_dt" '{ if($1==id){$2=value} { OFS="," }  print $0}' $filenm > Temp.txt
		   cat Temp.txt > $filenm

		   echo -e -n "Output is \n =================================================="
		   cat $filenm

		   

		   ;;

		8) echo -n "Enter File Name : "
		   read filenm
		
		   cat $filenm
		   echo -n "Delete line form file by id : "
		   read id
			
		   awk -F"," -v id="$id"  '{ if( $1!=id ) print $0}' $filenm > Delete.txt
		   cat Delete.txt > $filenm
		   
		   echo "Output is \n =================================================="
		   cat $filenm

#		   id+="d"
#		   sed $id $filenm		
			
#		   cat $filenm
		   ;;

		 9) echo -n "Enter File Name : "
		    read filenm

		    echo -n "Enter Line to print : "
		    read id
			
		    awk -F',' -v id="$id" '{ if( $1==id ) print $0}' $filenm
		    

#		    id+="p"
#		    sed -n $id $filenm

			 ;;
		10) break
			;;

	
	esac
	
	

done


