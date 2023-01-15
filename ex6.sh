#!/usr/bin/env bash

#ex6 : Ecrire un script qui prend en entrée un nombre entier et renvoie le nombre de chiffres de ce nombre.

clear
#on demande à l'utilisateur d'entrer un nombre entier
read -p "Entrer un nombre entier " nbre ;
#on utilise le signe #pour compter le nombre de chiffres et on le met dans une variable
chiffres=${#nbre} ;
echo "Il y a $chiffres chiffres dans $nbre"
exit 0 ; 