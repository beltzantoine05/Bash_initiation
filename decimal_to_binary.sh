#! /bin/bash

for nombre in $@; do
    binaire=0 #On réinitialise la chaine binaire pour le nouveau nombre
    nb_stock=$nombre #On stock le nombre dans une varibale immuable pour le echo de la fin 
    while [ "$nombre" -gt 0 ]; do
	reste=$((nombre % 2))  # Calculer le reste de la division par 2
	binaire="$reste$binaire"  # Ajouter le reste au début de la chaîne binaire
	nombre=$((nombre / 2))  # Diviser le nombre par 2
    done
    echo Le nombre binaire de $nb_stock est : $binaire

done

exit 0
