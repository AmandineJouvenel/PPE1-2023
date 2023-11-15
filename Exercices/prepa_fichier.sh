#!/usr/bin/env bash

if [ $# -ne 1 ]
then
    echo "On veut exactement un argument"
    exit
fi

fichier="$1"

while read -r line
do
    cleaned_line=$(grep -P -o '\p{Latin}+' | tr '[:upper:]' '[:lower:]' | tr 'ÉÀÊÂ' 'éàêâ')
    echo "$cleaned_line"
done < $fichier



# -P : regexp de perl
# -o : only elements matching pattern
# \p{Latin}+ : caractère latin au moins une fois

# tr : transforme option1 en option2
