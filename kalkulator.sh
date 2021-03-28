#!/bin/bash

input(){
    echo -n "Masukan input bilangan ke-1 = "
    read bil1
    echo -n "Masukan input bilangan ke-2 = "
    read bil2
}

loop=y
while [ $loop == y ]
do
    clear
    echo KALKULATOR:
    echo 1. PENJUMLAHAN
    echo 2. PENGURANGAN
    echo 3. PERKALIAN
    echo 4. PEMBAGIAN
    echo 5. Exit
    echo -n MASUKAN PILIHAN ANDA :
    read a

    if (($a == 1))
    then
        input
        echo Jumlah penjumlahan $bil1 dengan $bil2 = $[bil1+bil2]

    elif (($a == 2 ))
    then
        input
        echo Jumlah pengurangan $bil1 dengan $bil2 = $[bil1-bil2]

    elif (($a == 3 ))
    then
        input
        echo Jumlah perkalian $bil1 dengan $bil2 = $[bil1*bil2]

    elif (($a == 4 ))
    then
        input
        echo Jumlah pembagian $bil1 dengan $bil2 = $[bil1/bil2]

    else
        echo "Invalid!"
    exit

    fi

    echo -n "Mulai Menghitung Lagi (y,n)= "
    read loop

done