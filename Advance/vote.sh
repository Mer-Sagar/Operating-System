
echo -e -n "Enter File Name : "
read filenm

#echo -e -n "Enter Record (Firstname:middlename:lastname:age:address:city:pin:phone): "
#read data

#cat >> $data

i=1

while IFS=":" read fnm mnm lnm age addr city pin phn
do
	echo -e "\n==========================\nRecord $i"
	echo -e "\n Name :--> $fnm $mnm $lnm"
	echo "Age :--> $age"
	echo "Address :--> $addr"
	echo "City :--> $city"
	echo "Pin :--> $pin"
	echo "Phone :--> $phn"
	echo -e "\n========================="

	if [ 18 -gt $age ]
	then
		
		awk -F":" '{ if( $4 >=18 ) print $0 }' $filenm	

	fi
	i=$(($i+1))
done < $filenm




====================================================
Output:

mersa@Rastravadi MINGW64 ~/Desktop/OS/prec1/new
$ vi vote.sh

mersa@Rastravadi MINGW64 ~/Desktop/OS/prec1/new
$ sh vote.sh
Enter File Name : person.txt

==========================
Record 1

 Name :--> Mer Sagar BharatKumar
Age :--> 21
Address :--> Shivranjani
City :--> Ahemdabad
Pin :--> 360001
Phone :--> 43246573

=========================

==========================
Record 2

 Name :--> Kamal A Kant
Age :--> 22
Address :--> abc
City :--> Jamsedpur
Pin :--> 360002
Phone :--> 237649382

=========================

==========================
Record 3

 Name :--> Akshit ajaybhai Trivedi
Age :--> 16
Address :--> Paladi
City :--> Ahemdabad
Pin :--> 360003
Phone :--> 34678873

=========================
Mer:Sagar:BharatKumar:21:Shivranjani:Ahemdabad:360001:43246573
Kamal:A:Kant:22:abc:Jamsedpur:360002:237649382
Sijo:m:Jose:18:pqr:Navsari:230001:7836482
