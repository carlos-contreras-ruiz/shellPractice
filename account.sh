#!/bin/bash

# This script is for creating a local account

#read -p 'Enter the username to create: ' USER_NAME
#ASk real name
#read -p 'Enter the name of the person: ' COMMENT
#Ask for the password
#read -p 'Enter the password: ' PASS

#useradd -c "${COMMENT}" -m ${USER_NAME}

#echo ${PASS} | passwd --stdin ${USER_NAME}

# Generate random password
PASSWORD=${RANDOM}
echo $PASSWORD
PASSWORD=${RANDOM}${RANDOM}${RANDOM}

PASSWORD=$(date +%s)
echo $PASSWORD

PASSWORD=$(date +%s%N | sha256sum)
echo $PASSWORD