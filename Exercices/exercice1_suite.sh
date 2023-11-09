# Exercice 1 (suite) :
# Écrire un second script qui lance le script précédent trois fois, une fois pour chaque année, en prenant le type d’entité en argument.

type_entite="$1"

if [ -n "$1" ]       # si l'argument n'est pas vide
then
    ./exercice1.sh 2016 "$type_entite"
    ./exercice1.sh 2017 "$type_entite"
    ./exercice1.sh 2018 "$type_entite"
else
    echo "Il faut entrer une entité"
fi
