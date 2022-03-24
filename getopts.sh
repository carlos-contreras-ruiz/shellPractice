#!/bin/bash

usage(){
    echo "Usage: ${0} [-vs] [-l LENGTH]" >&2
    echo "-l specify the password length"
    echo "-s Append special caracter"
    echo '-v Increase verbosity'
    exit 1
}

log(){
    echo $1
    if [[ "${VERBOSE}" = 'true' ]]
    then
        echo 'Generating password'
        echo '...'
    fi
}
# Verbose mode can be enable with -v
LENGTH=48
# Cunado pones un colon : despues de la opcion significa que debe
# tener algun valor

while getopts vl:s OPTION
do
    case ${OPTION} in
    v)
        VERBOSE='true'
        ;;
    l)
        LENGTH="${OPTARG}"
        ;;
    s)
        USE_SPECIAL_CHARACTER='true'
        ;;
    ?)
        usage
        ;;
    esac
done

log 'Generating password function'

echo 'Length'
echo $LENGTH
echo 'special caracter'
echo $USE_SPECIAL_CHARACTER

exit 0