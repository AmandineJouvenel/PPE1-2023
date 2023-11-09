# Voici un script bash :


#!/usr/bin/env bash

if [ $# -ne 1 ]
then
    echo "On veut exactement un argument"
    exit
fi

cd ../urls/

URLS="$1"

if [ ! -f $URLS ]
then
    echo "On attend un fichier, et non un dossier"
fi


echo -e "<table>" >> fichier_tabulaire.txt
echo -e "<tr><th>N°</th><th>URL</th><th>Réponse</th><th>Encodage</th></th>" >> fichier_tabulaire.txt

lineno=1
while read -r URL
do
    response=$(curl -s -I -L -w "%{http_code}" -o /dev/null $URL)      # ou curl -s -I -L $URL | grep -P '^HTTP/' | tail -n 1
    encoding=$(curl -s -I -L -w "%{content_type}" -o /dev/null $URL | grep -P -o "charset=\S+" | cut -d"=" -f2)
    echo -e "<tr><td>$lineno</td><td>$URL</td><td>$response</td><td>$encoding</td></tr>"
    lineno=$(expr $lineno + 1)
done < $URLS >> fichier_tabulaire.txt

echo -e "</table>" >> fichier_tabulaire.txt



# Comment gérer le fait que le fichier de sortie "fichier_tabulaire.txt" soit dans un autre répertoire ?





#/ dev/null est une sorte de fichier poubelle dans lequel on peut écrire indéfiniment sans qu'il ne se passe jamais rien
# \S : non espacement (vs. \s : espacement)
# -w : récupère infos sur l'interaction entre notre PC et le serveur distant
# -w "%{http_code}" : on récupère l'option http_code
