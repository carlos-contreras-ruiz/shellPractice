#!/bin/bash

log(){
    # Asi se declara una variable local en una funcion
    # La @ agrega todas los parametros
    local MESSAGE="${@}"
    local ANOTHER_MESSAGE="${1}"
    if [[ "${VERBOSE}" = 'true' ]]
    then
        echo "${MESSAGE}"
    fi
    echo $ANOTHER_MESSAGE
}

log 'first' 'Hello!'
VERBOSE=true
log 'SECOND' 'Function'