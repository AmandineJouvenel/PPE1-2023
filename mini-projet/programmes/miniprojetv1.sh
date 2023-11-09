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

lineno=1
while read -r URL
do
    response=$(curl -s -I -L -w "%{http_code}" -o /dev/null $URL)      # ou curl -s -I -L $URL | grep -P '^HTTP/' | tail -n 1
    encoding=$(curl -s -I -L -w "%{content_type}" $URL | grep -P -o "charset=\S+" | cut -d"=" -f2)
    echo -e "$lineno\t$URL\t$response\t$encoding"
    lineno=$(expr $lineno + 1)
done < $URLS




#/ dev/null est une sorte de fichier poubelle dans lequel on peut écrire indéfiniment sans qu'il ne se passe jamais rien
# \S : non espacement (vs. \s : espacement)
# -w : récupère infos sur l'interaction entre notre PC et le serveur distant
# -w "%{http_code}" : on récupère l'option http_code
