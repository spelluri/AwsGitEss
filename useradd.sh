#!/bin/bash

name=($(cat userlist.txt))
echo ${name[0]}
echo ${name[1]}
echo ${name[2]}

create_user() {

	username=$1
	password=$2
        sudo useradd -m -s /bin/bash $username
	echo "$username:$password" | sudo chpasswd
	echo "User '$username' has been created with the password '$password'"

}

#create_user ${name[0]} password1
#create_user ${name[1]} password2
#create_user ${name[2]} password3





