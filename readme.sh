#! /bin/bash

echo num.sh applique une opération à chaque nombre d\'une liste de nombres entiers positifs donnés en argument.

echo "./num.sh [OP] [ARGS]..."

echo OP est l\'opération à appliquer, à choisir parmi :

echo \* l ou len \(pour longueur\) : afficher le nombre de chiffres de chaque nombre
echo \* m ou mir \(pour miroir\) : écrire chaque nombre à l\'envers \(en miroir\)
echo \* s ou sum \(pour somme\) : afficher la somme des chiffres de chaque nombre
echo \* b ou bin \(pour binaire\) : écrire chaque nombre, donné sous forme décimale, en binaire
echo \* d ou dec \(pour décimal\) : écrire chaque nombre, donné sous forme binaire, en décimal
echo \* i ou int \(pour interactif\) : commencer la saisie interactive de l\'opération à appliquer aux nombres

echo ARGS est la liste des nombres entiers positifs à traiter.

exit 0
