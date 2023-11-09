#!/usr/bin/env bash

fichier="$1"
nb_mots="$2"

if [ -z "$nb_mots" ]
then
    nb_mots=25
fi

./prepa_fichier.sh "$fichier" > fichier_nettoye.txt


if [ -z "$fichier" ]
then
    echo "Entrez un nom de fichier (obligatoire) et le nombre de mots que vous souhaitez afficher (optionnel)"
else
    echo "Mots les plus fréquents : "
    cat ./fichier_nettoye.txt | sort | uniq -c | sort -nr | head -n $nb_mots
fi


# sort : on trie les mots par ordre alphabétique
# uniq -c : les mots qui se répètent sont rassemblés en un mot unique et avec -c on compte le nombre d'occurrences
# sort -nr : on trie les mots par ordre décroissant de leur fréquence
# head -n $nb_mots : on affiche les n premiers mots
