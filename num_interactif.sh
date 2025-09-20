#!/bin/bash

# Vérifier que le premier argument est "i" (mode interactif)
if [ "$1" != "i" ]; then
    echo Le premier argument doit être "i"
    exit 0
fi

# Ignorer le premier argument ("i")
shift

# Vérifier qu'il reste des arguments
if [ "$#" -eq 0 ]; then
    echo "Erreur : Aucun argument fourni pour les opérations."
    exit 1
fi

# Boucle interactive
while true; do
    echo "Saisissez une opération parmi :"
    echo "  l (len)   : Calculer la longueur"
    echo "  m (mir)   : Miroir"
    echo "  s (sum)   : Somme des chiffres"
    echo "  b (bin)   : Convertir en binaire"
    echo "  d (dec)   : Convertir en décimal"
    echo "  i (int)   : Autres opérations"
    echo "  c         : Quitter le mode interactif"
    read -p "Votre choix : " op

    # Quitter le mode interactif
    if [ "$op" = "c" ]; then
        echo "Fin du mode interactif."
        exit 0
    fi

    # Exécuter l'opération choisie
    case $op in
        "l"|"len")
            echo "Exécution de l'opération 'len' sur les arguments : $@"
            ./num.sh l "$@"
            ;;
        "m"|"mir")
            echo "Exécution de l'opération 'mir' sur les arguments : $@"
            ./num.sh m "$@"
            ;;
        "s"|"sum")
            echo "Exécution de l'opération 'sum' sur les arguments : $@"
            ./num.sh s "$@"
            ;;
        "b"|"bin")
            echo "Exécution de l'opération 'bin' sur les arguments : $@"
            ./num.sh b "$@"
            ;;
        "d"|"dec")
            echo "Exécution de l'opération 'dec' sur les arguments : $@"
            ./num.sh d "$@"
            ;;
        "i"|"int")
            echo "Exécution de l'opération 'int' sur les arguments : $@"
            ./num.sh i "$@"
            ;;
        *)
            echo "Erreur : Opération '$op' non valide. Veuillez réessayer."
            ;;
    esac
done
