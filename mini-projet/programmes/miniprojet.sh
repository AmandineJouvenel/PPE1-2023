#!/usr/bin/env bash

# ./miniprojet.sh fr.txt > ../tableaux/tableau-fr.html


if [ $# -ne 1 ]
then
    echo "On veut exactement un argument"
    exit
fi

cd ../urls/

URLS="$1"

if [ ! -f $URLS ]
then
    echo "On attend un fichier !"
fi

echo "<html>
    <head>
        <meta charset=\"UTF-8\">
    </head>
    <body>"

echo "      <table>
            <tr><th>Ligne</th><th>URL</th><th>Code HTTP</th><th>Encodage</th></th>"


lineno=1
while read -r URL
do
    response=$(curl -s -I -L -w "%{http_code}" -o /dev/null $URL)      # ou curl -s -I -L $URL | grep -P '^HTTP/' | tail -n 1
    encoding=$(curl -s -I -L -w "%{content_type}" -o /dev/null $URL | grep -P -o "charset=\S+" | cut -d"=" -f2)
    echo "<tr>
        <td>$lineno</td>
        <td>$URL</td>
        <td>$response</td>
        <td>$encoding</td>
        </tr>"
    lineno=$(expr $lineno + 1)
done < $URLS


echo "      </table>
    </body>
</html>"




#/ dev/null est une sorte de fichier poubelle dans lequel on peut écrire indéfiniment sans qu'il ne se passe jamais rien
# \S : non espacement (vs. \s : espacement)
# -w : récupère infos sur l'interaction entre notre PC et le serveur distant
# -w "%{http_code}" : on récupère l'option http_code
