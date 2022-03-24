#!/bin/bash

# if [[ "${1}" = 'start' ]]
# then
#     echo "It works"
# elif [[ "${1}" = 'stop' ]]
# then
#     echo "STOP"
# else
#     echo "Algo mas"
#     exit 1
# fi

case "${1}" in
    start)
        echo "Starting"
    ;;
    stop)
        echo "Stoping"
    ;;
    status|state)
        echo "Status"
    ;;
    *)
        echo "Default option"
        exit 1
    ;;
esac