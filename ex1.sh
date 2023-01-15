#!/usr/bin/env bash

#ex1 : Ecrire un script qui prend en entrée un nombre entier et affiche tous les nombres de 1 à ce nombre.

clear
read -p "entrer un nbre " nb

for((i=1;i<=${nb};i++)); do
    echo "${i}"
done

exit 0 ;
