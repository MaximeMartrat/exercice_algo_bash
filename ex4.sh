#!/usr/bin/env bash

#ex4 : Ecrire un script qui prend en entrée deux chaînes de caractères et renvoie true si elles sont des anagrammes, false sinon.

clear ;
#on demande à l'user d'entrer un mot
read -p "Entrer un mot " mot1 ;
#on lui demande d'entrer un autre mot
read -p "Entrer un deuxième mot " mot2 ;
#on convertit les variables en chaine de caractère minuscule avec echo et les deux virgules on utilise grep pour afficher chaque caractère sur une ligne différente puis on trie par ordre alphabétique avec sort en ignorant la casse avec -f et on utilise tr pour supprimer les retours à la ligne
string1=$(echo ${mot1,,} | grep -o . | sort -f | tr -d '\n') ;
string2=$(echo ${mot2,,} | grep -o . | sort -f | tr -d '\n') ;

#ensuite on compare les deux résultats s'ils sont egaux alors ce sont des anagrammes sinon non
if [ "$string1" = "$string2" ] ; then
    echo $mot1 " est un anagramme de " $mot2 ;
else
    echo $mot1 " et " $mot2 " ne sont pas des anagrammes" ;
fi