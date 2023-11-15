#!/usr/bin/env bash

fichier="$1"
nb_bigrammes="$2"


if [ ! -f "$1" ]
then
    echo "Pas de fichier donné en argument !"
    exit
fi


if [ -z "$2" ]
then
    nb_bigrammes=25
else
    nb_bigrammes="$2"
fi


if ! [[ "$nb_bigrammes" =~ ^0*[1-9][0-9]*$ ]]
then
    echo "Donnez un nombre !"
    exit
fi


./prepa_fichier.sh "$fichier" > col1
echo "_" > col2
./prepa_fichier.sh "$fichier" >> col2


echo "Bigrammes les plus fréquents :"
paste col1 col2 | sort | uniq -c | sort -nr | head -n "$nb_bigrammes"





# paste col1 col2 : concatène col1 et col2 pour chaque ligne
# echo "_" > col2 : pour décaler d'une ligne col2 par rapport à col1
# ./prepa_fichier.sh "$fichier" >> col2 : 2 chevrons pour ajouter à la suite de l'underscore !!
