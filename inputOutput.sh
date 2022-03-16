#!/bin/bash

# This script demostrates I/O redirection

# Redirect STDOUT to a file
FILE="./data.txt"
head -n1 /etc/passwd > ${FILE}

# Redirect STDIN to a program
read LINE < ${FILE}

echo $LINE

# Redirect STDERROR to a file
# overwrite
echo "${RANDOM} ${RANDOM}" > ${FILE}
# >> append 
echo "${RANDOM} ${RANDOM}" >> ${FILE}


# File Descriptors
read LINE 0< ${FILE}

echo "LINE conatins: ${LINE}"

# Redirect STDERR to a file using FD 2
ERR_FILE="./error.txt"
head -n3 /etc/passwd /fake 2> ${ERR_FILE}

head -n3 /etc/passwd /fake &> ${ERR_FILE}