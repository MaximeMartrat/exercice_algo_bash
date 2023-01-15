#!/usr/bin/env bash

#ex2 : Ecrire un script qui prend en entrée une chaîne de caractères et renvoie le nombre de voyelles dans la chaîne.

clear
read -p "ecrivez une phrase " input
#on sépare les voyelles de la chaine de caractère entrée avec grep et une regex on les comptes a l'aide de la commande wc(wordcompt) puis on affiche le  résultat
voyelle=$(echo $input | grep -o -i "[aeiouy]" | wc --lines)

echo $voyelle
exit 0 ;