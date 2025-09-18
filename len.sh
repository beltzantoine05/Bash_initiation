#! /bin/bash


for val in $@; do #explorer les [Args]
    length=$(expr length "$val") #Récupérer dans length la taille de val
    echo $length
done

exit 0
