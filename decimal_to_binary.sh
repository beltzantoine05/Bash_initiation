#! /bin/bash

for nombre in $@; do
    while [ "$nombre" -gt 0 ]; do
	reste=$((nombre % 2))  # Calculer le reste de la division par 2
	binaire="$reste$binaire"  # Ajouter le reste au début de la chaîne binaire
	nombre=$((nombre / 2))  # Diviser le nombre par 2
    done
    echo Le nombre binaire de $nombre est : $binaire

done

exit 0
