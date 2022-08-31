echo -e -n "\n Enter 5 Digit-Number: "
read num

sum=0
even_sum=0
odd_sum=0
rev=0

fl_sum=0
last=0
last=$[$num%10]

while [ $num -gt 0 ]
do
	first=$num
	
	rem=$(( $num % 10 ))
	sum=$(( $rem + $sum ))
	num=$(( $num / 10 ))

	if [ $(($rem % 2)) -eq 0 ]
	then
		echo " $rem"
		even_sum=$[$rem + $even_sum]
	else
		odd_sum=$[$rem + $odd_sum]
	fi

	rev=$[ $rem + $rev * 10] 

done
fl_sum=$[ $first + $last  ]

echo " Reverse Number     is :--> "$rev
echo " Sum of five Number is :--> "$sum
echo " Sum of All the EVEN Numbers is :--> "$even_sum
echo " Sum of All the ODD  Numbers is :--> "$odd_sum
echo " Sum of First and Last Number is :--> "$fl_sum



# rem=$[ $num % 10 ]
# sum=$[ $rem + $sum ]
# num=$[ $num / 10 ]


# rem=`expr $num % 10`
# sum=`expr $rem + $sum`
# num=`expr $num / 10`

