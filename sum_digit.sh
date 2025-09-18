#!/bin/bash

for val in "$@"; do
    somme=0
    # Parcourir chaque chiffre du nombre
    for (( i=0; i<${#val}; i++ )); do
        chiffre=${val:$i:1}  # Extraire le i-ème chiffre
        somme=$((somme + chiffre))  # Additionner le chiffre à la somme
    done
    echo "Somme des chiffres de $val : $somme"
done

exit 0
