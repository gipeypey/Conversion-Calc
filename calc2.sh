#!/bin/bash

menu_num(){
    read -p "Input num1 = " bil1
    read -p "Input num2 = " bil2
}

menu_calculator (){
    echo "--CALCULATOR--"
    echo "1. PENJUMLAHAN"
    echo "2. PENGURANGAN"
    echo "3. PERKALIAN"
    echo "4. PEMBAGIAN"
    echo "5. Exit"
    read -p "Input (1-5): " calc
}


x=0
while [ $x = 0 ]
do
        #-------------MENU_NUM-------------#
        clear
        menu_num

        #-------------MENU_CALCULATOR------------#
        echo " "
        menu_calculator

        #-------------PENJUMLAHAN-------------#
        if [ "$calc" = 1 ]
        then
            echo "Jumlah penjumlahan $bil1 dengan $bil2 = $[bil1+bil2]"

        #-------------PENGURANGAN-------------#
        elif [ "$calc" = 2 ]
        then
            echo "Jumlah pengurangan $bil1 dengan $bil2 = $[bil1-bil2]"

        #-------------PERKALIAN-------------#
        elif [ "$calc" = 3 ]
        then
            echo "Jumlah perkalian $bil1 dengan $bil2 = $[bil1*bil2]"

        #-------------PEMBAGIAN-------------#
        elif [ "$calc" = 4 ]
        then
            echo "Jumlah pembagian $bil1 dengan $bil2 = $[bil1/bil2]"

        #-------------BACK (ERROR)-------------#
        elif [ "$calc" = 5 ]
        then
            x=0

        else
            clear
            echo "!!Invalid!!"
            sleep 2

        fi 

        read x
done