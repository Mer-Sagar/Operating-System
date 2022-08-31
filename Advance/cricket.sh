echo -n "Enter File Name : "
read filenm

i=0

while IFS=":" read fnm lnm match score con
do
	echo -e "\n==========================\nRecord $i"
	echo -e "\n Name of Player :--> $fnm $lnm"
	echo -e "\n Total Match Played :--> $match"
	echo -e "\n Total Score :--> $score"
	echo -e "\n Country :--> $con"

	avg=`echo "scale=3; $score / $match" | bc -l`

	echo -e "\n Average is:--> $avg"
        
	rec=$fnm":"$lnm":"$match":"$score":"$con":"$avg

	echo $rec >> Temp.txt


	i=$(($i+1))
done < $filenm

j=0

echo -n -e "\n =================\n Above 40 average is \n\n "
#while IFS=":" read fnm lnm match score con avg
#do
 
 	# avg1=`echo "scale=3; $score / $match" | bc -l`
	
	

	awk -F":" '{ if( $6 > 90 ) print $0 }' Temp.txt

#	j=$(($j+1))
#done < Temp1.txt


#awk -F":" -v avg="$avg" '{if( $ ) print $0}'
