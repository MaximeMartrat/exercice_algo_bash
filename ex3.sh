clear
#!/bin/bash

#ex3 : Ecrire un script qui prend en entrée un tableau d'entiers et renvoie le plus grand élément du tableau.

#on initialise un tableau vide
nb=() ;
#on boucle pour demander a l'user d'entre des nombres et f quand il a fini et on vérifi que ce soit bien des nombres
while true ; do
    read -p "Entrer un nombre (ou 'f' pour finir): " input ;
    if [[ $input == "f" ]] ; then
        break
    elif [[ $input =~ ^[0-9]+$ ]] ; then
        nb+=($input)
    else
        echo "Entrée invalide. Entrer un nombre ou 'f'." ;
    fi
done
#on affiche le tableau a l'utilisateur
echo "les nombres entrés sont : ${nb[@]}"
#on initialise la variable max qui prend pour valeur le premier nombre du tableau
max=${nb[0]} ;
#on fait une boucle pour vérifier si le premier nombre est plus grand que les autres et sinon on remplace le premier nombre par le plus grand du tableau
for i in "${nb[@]}"; do
    if  [ ${i} -gt ${max} ]  ; then
        max=$i
    fi
done
#on affiche le résultat à l'user
echo "le plus grand nombre est : $max"
exit 0 ;
