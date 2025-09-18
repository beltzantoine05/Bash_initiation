#! /bin/bash

for val in "$@"; do #On parcourt les [Args]
    dec=0 #On initialise la valeur en decimal
    binary_reversed=$(echo "$val" | rev) #On renverse pour lire dans le bon sens
    for ((i=0; i<${#val} ; i++)); do #On parcourt les chiffres du nombre binaire
	chiffre=${binary_reversed:$i:1}
	dec=$((dec + chiffre * (2**i))) #On construit la valeur décimale
    done
    echo En decimal $val vaut $dec
done

exit 0


	
	
