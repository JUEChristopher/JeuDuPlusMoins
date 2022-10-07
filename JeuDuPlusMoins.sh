#!/bin/bash

random=$(((RANDOM % 99)+ 1))

nbTenta=0

echo
echo "Trouve le nombre mystère se situant entre 1 et 99"
echo "----------------------------------------------------"
echo

while read -p "Propose un nombre : " nombre
do
    if [ "$nombre" -lt "$random" ]; then
        ((nbTenta++))
        echo "> Nombre trop petit"
        echo
    elif [ "$nombre" -gt "$random" ]; then
        ((nbTenta++))
        echo "> Nombre trop grand"
        echo
    elif [ "$nombre" -eq "$random" ]; then
        ((nbTenta++))
        echo
        echo " -----------------------------"
        echo "/ Bingo ! Le nombre était $random /"
        echo "-----------------------------"
        echo
        echo "en $nbTenta tentative(s)"
        echo
        break
    fi
done