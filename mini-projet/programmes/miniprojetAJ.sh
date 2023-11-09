#!/usr/bin/env bash

cd ../urls/

fichier="$1"
lineno=0

if [ -z "$1" ]
    then
        echo "Il faut entrer un fichier d'URLs"
else
    while read -r line;
        do
            lineno=$(expr $lineno + 1)
            codehttp=$(curl -o /dev/null -s -w "%{http_code}" -L $line)
            encodage=$(curl -I -s $line | sed -n 's/.*charset=\(.*\)/\1/p')
            echo -e $lineno "\t" $line "\t" $codehttp
            echo $encodage;
            #echo -e $lineno "\t" $line "\t" $codehttp "\t" $encodage;  --> ne marche pas
        done < "$fichier"
fi




# Code HTTP :
# On utilise -o /dev/null pour que le contenu de la page web ne s'affiche pas car on cherche juste le code http.
# -s : mode silencieux
# On utilise -w "%{http_code}\n" pour indiquer le format que l'on souhaite afficher, en l'occurrence le code http.
# On utilise l'option -L pour suivre les redirections


# Encodage :
# On utilise la commande sed pour remplacer un contenu par un autres, en l'occurrence ici, on veut transormer '/.*charset=' par l'encodage correspondant, c'est-à-dire ce qui suit '/.*charset='.
# On utilise l'option -n de sed pour spécifier ce que l'on veut afficher.
# On utilise s/regex/ pour remplacer ".*charset=" par le contenu entre parenthèses (qui correspond à l'encodage).
# Avec \1, on spécifie que c'est ce qui précède (entre parenthèses) que l'on veut afficher avec p.

