#!/bin/bash

# Vérification du nombre d'arguments donnés
if [ "$#" -lt 2 ]; then
    ./readme.sh
    exit 0
fi

# Transformation des commandes mot --> lettre
op=$1


case $op in
    "len"|"l")
        op=l
        ;;
    "mir"|"m")
        op=m
        ;;
    "sum"|"s")
        op=s
        ;;
    "bin"|"b")
        op=b
        ;;
    "dec"|"d")
        op=d
        ;;
    "int"|"i")
        op=i
        ;;
    *)
        ./readme.sh
        exit 0
        ;;
esac

shift #dorénavant $@ ne contient plus que les [Args]

# Vérification du format des arguments donnés (entiers positifs)


for val in $@; do
    if [ "$val" -lt  0 ]; then
	./readme.sh
	exit 0
    fi
done

# Aiguillage vers les différents scripts selon la demande
case $op in
    "l")
        ./len.sh "$@"
        ;;
    "m")
        ./mirror.sh "$@"
        ;;
    "s")
        ./sum_digit.sh "$@"
        ;;
    "d")
        ./decimal_to_binary.sh "$@"
        ;;
    "b")
        ./binary_to_decimal.sh "$@"
        ;;
    *)
        ./readme.sh
        exit 0
        ;;
esac


exit 0    
	    
		
