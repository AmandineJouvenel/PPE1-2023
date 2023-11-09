# Exercice 2 :
# • créer un script pour établir le classement des lieux les plus cités.
# • prendre en argument l’année, le mois et le nombre de lieux à afficher
# • accepter * pour l’année et le mois.

annee="$1"
mois="$2"
nombre_lieux="$3"

# Si les arguments sont vides, message d'erreur
if [ -z "$annee" ] || [ -z "$mois" ] || [ -z "$nombre_lieux" ]
then
    echo "Entrez une année, un mois, et le nombre de lieux que vous souhaitez afficher."
else
    echo "Lieux les plus cités : "
    cd /home/amandine/Documents/Master_TAL/M1_S1/PE_TAL/monArborescence/ann/
    cat ./$annee/$mois/* | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -n "$nombre_lieux"
fi
