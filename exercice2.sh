# Exercice 2
# • créer un script pour établir le classement des lieux les plus cités.
# • prendre en argument l’année, le mois et le nombre de lieux à afficher
# • accepter * pour l’année et le mois.

annee="$1"
mois="$2"
nombre_lieux="$3"

cd /home/amandine/Documents/Master_TAL/M1_S1/PE_TAL/monArborescence/ann/

cat ./"$1"/"$2"/* | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -n "$3"
