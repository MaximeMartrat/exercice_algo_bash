#!/usr/bin/env bash

#ex5 : Ecrire un script qui prend en entrée un nombre entier et renvoie true si c'est un nombre premier, false sinon.

clear
#demander à l'user d'entrer un nombre
read -p "Donner un nombre " nbre ;
#pour vérifier si un nbre est premier on vérifie d'abord que le nbre soit supérieur à 1 sinon il n'est pas premier  
function isPrime() {
    if [ $nbre -le 1 ] ; then
        echo $nbre" n'est pas un nombre premier"
        return
    fi
    #si le nbre est 2 il est premier
    if [ $nbre -eq 2 ] ; then
        echo $nbre" est un nombre premier"
        return
    fi
    #on fait une boucle qui vérifie si le reste de la division du nombre par chaque entier entre 2 et le nombre entré est égal à 0. Si c'est le cas, alors ce n'est pas un nombre premier
    for(( i=$nbre-1 ; i > 1 ; i-- )); do
        if (( $nbre % i == 0 )) ; then
            echo $nbre" n'est pas un nombre premier"
            return
        fi
    done
    echo $nbre" est un nombre premier"
}

isPrime $nbre ;

exit 0 ;