#! /bin/bash


for val in $@; do #Parcourir les [Args]
    echo "$val" | rev # rev renverse la chaine de caractères
done


