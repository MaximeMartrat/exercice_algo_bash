#!/usr/bin/env bash

#ex7 : Ecrire un script qui prend en entrée un nombre entier et renvoie la somme des chiffres de ce nombre.

clear
#on demande à l'utilisateur un nombre entier
read -p "Entrer un nombre entier " nbre ;
#on initialise une somme à 0
sum=0 ;
#on boucle pour itérer sur chaque chiffre du nombre en utilisant grep pour separer chaque chiffre puis on les ajoute à la somme
for chiffre in $(echo $nbre | grep -o .) ;
do
    sum=$((sum+chiffre))
done
#on affiche le résultat
echo "la somme des chiffres du nombre $nbre est $sum"
exit 0 ;