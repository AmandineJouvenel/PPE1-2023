# Exercice 1 :
# Écrire un script qui compte les entités pour une année un type d’entité donnés en argument du programme.

annee="$1"
entite="$2"

cd /home/amandine/Documents/Master_TAL/M1_S1/PE_TAL/monArborescence/ann/

if [ -n "$1" ]       # si l'argument annee n'est pas vide
then
    if [ -n "$2" ]   # si l'argument entite n'est pas vide
    then
        echo "Nombre d'entités : "
        cat ./"$1"/*/* | grep "$2" | wc -l     # alors on exécute le programme
    else
        echo "Vous devez entrer une année et une entité"
    fi
else
    echo "Vous devez entrer une année et une entité"
fi

