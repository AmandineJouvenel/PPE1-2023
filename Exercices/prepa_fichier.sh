#!/usr/bin/env bash

if [ $# -ne 1 ]
then
    echo "On veut exactement un argument"
    exit
fi

fichier="$1"

while read -r line
do
    cleaned_line=$(grep -o -E '\w+' | tr '[:upper:]' '[:lower:]' | tr -d '[:punct:]')
    echo "$cleaned_line"
done < $fichier



# -o : only elements matching pattern
# -E : extended regexp
# \w+ : caractère alphanumérique au moins une fois

# tr : transforme option1 en option2
# -d : delete
