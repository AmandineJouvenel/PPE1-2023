# Exercice 1 :
# Écrire un script qui compte les entités pour une année un type d’entité donnés en argument du programme.

annee="$1"
entite="$2"

cd /home/amandine/Documents/Master_TAL/M1_S1/PE_TAL/monArborescence/ann/

cat ./"$1"/*/* | grep "$2" | wc -l
