#!/usr/bin/env bash

fichier="$1"
nb_mots="$2"


if [ ! -f "$1" ]
then
    echo "Pas de fichier donné en argument !"
    exit
fi


if [ -z "$2" ]
then
    nb_mots=25
else
    nb_mots="$2"
fi


if ! [[ "$nb_mots" =~ ^0*[1-9][0-9]*$ ]]
then
    echo "Donnez un nombre !"
    exit
fi


echo "Mots les plus fréquents : "
./prepa_fichier.sh "$fichier" | sort | uniq -c | sort -nr | head -n $nb_mots



# if [ ! -f "$1" ] : si l'argument 1 n'est pas un fichier (-f)
# if [ -z "$2" ] : si l'argument 2 est vide (-z)
# if ! [[ "$nb_mots" =~ ^0*[1-9][0-9]*$ ]] : si l'argument nb_mots ne matche pas avec la regex


# sort : on trie les lignes (ici mots) par ordre alphabétique
# uniq -c : les mots qui se répètent sont rassemblés en un mot unique et avec -c on compte le nombre d'occurrences
# sort -nr : on trie les lignes (ici mots) par ordre décroissant de leur fréquence (n = numeric, r = reverse)
# head -n $nb_mots : on affiche les n premiers mots
