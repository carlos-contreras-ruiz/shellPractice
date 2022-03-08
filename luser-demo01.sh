#!/bin/bash
WORD=script
echo "Hello $WORD"

USER_NAME=$(id -un)
echo "Your username is ${USER_NAME}"
echo "Your uid is ${UID}"

# Display if you are root

if [[ "${UID}" -eq 0 ]]
then
    echo 'You are not root'
else
    echo 'Youa are root
    '
fi