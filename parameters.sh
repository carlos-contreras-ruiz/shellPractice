#!/bin/bash

# This script generates a random password
# And arguments

#Display lo que el usuario escriba

echo "You executed this command: ${0}"
# ./parameters.sh 

# ${0} nos muestra que shel ejecutamos y su ruta al archivo
# ${@} nos da la lista de todos los parametros del script
# ${1-N} nos da el parametro que encaje con la posicion

#basename regresa la ultima parte de la ruta del archivo
echo $(basename /dir/tt/file.txt)
echo $(basename ${0})

#Dirname regresa ruta del archivo sin nombre
echo $(dirname /dir/tt/file.txt)

#cuantos argumentos se pasaron
# Dentro del script son parametros fuera argumentos
# echo Hola | ./parameters.sh arg
NUMBER_OF_PARAMETERS="${#}"
echo "You supplied ${NUMBER_OF_PARAMETERS} arguments in the command line"

#Make sure at least one argument is supplied
if [[ "${NUMBER_OF_PARAMETERS}" -lt 1 ]]
then
 echo "Usage: ${0} USER_NAME [USER_NAME]"
 exit 1
fi

# echo Hola | ./parameters.sh r t y u
# for PARAMETERS in "${@}"
# do
#  echo "PARAMETERS: ${PARAMETERS}"
# done

# Parametros con nombre flags
# echo Hola | ./parameters.sh -u carlos -a 30 -f "Carlos COntreras"
while getopts u:a:f: flag
do
    case "${flag}" in
        u) USERNAME=${OPTARG};;
        a) AGE=${OPTARG};;
        f) FULLNAME=${OPTARG};;
    esac
done
echo "Username: $USERNAME";
echo "Age: $AGE";
echo "Full Name: $FULLNAME";

#Aceptar argumentos de otra funcion con | EX: echo Hola | ./parameters.sh 
MESSAGE=$(</dev/stdin)
echo $MESSAGE