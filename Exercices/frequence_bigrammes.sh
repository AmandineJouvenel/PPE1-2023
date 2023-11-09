#!/usr/bin/env bash

fichier="$1"
nb_bigrammes="$2"

if [ -z "$fichier" ]
then
    echo "Entrez un nom de fichier (obligatoire) et le nombre de bigrammes que vous souhaitez afficher (optionnel)"
    exit
fi

if [ -z "$nb_bigrammes" ]
then
    nb_bigrammes=25
fi

./prepa_fichier.sh "$fichier" > fichier_nettoye_bigrammes.txt

paste <(head -n -1 fichier_nettoye_bigrammes.txt) <(tail -n +2 fichier_nettoye_bigrammes.txt) > bigrammes.txt

echo "Bigrammes les plus fréquents :"
cat bigrammes.txt | sort | uniq -c | sort -nr | head -n "$nb_bigrammes"



# paste : concatène head -n -1 fichier avec tail -n +2 fichier
# head -n -1 : toutes les lignes jusqu'à la dernière (car pas de bigramme possible)
# tail -n +2 toutes les lignes à partir de la 2e (même raison)
