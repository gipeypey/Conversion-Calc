#!/bin/sh

x=0
while [ $x = 0 ]
do
    clear

    #menu
    echo "MENU RUMUS BANGUN DATAR/RUANG"
    echo "1. Luas Persegi Panjang"
    echo "2. Luas Segitiga"
    echo "3. Luas Permukaan Kubus"
    echo "4. Luas Permukaan Balok"
    echo "5. Volume Kubus"
    echo "6. Volume Balok"
    echo "7. Exit"
    read -p "Pilih Menu(1-6): " pilih

    #soal 1
    if [ "$pilih" == 1 ]
        then
            echo -n "Masukkan Panjang Persegi: "
            read p
            echo -n "Masukkan Lebar Persegi: "
            read l
            luas=$(expr $p \* $l)
            echo "Luas Persegi Panjang: $luas"

            echo "continue? (y/n)"
            read answer
            case "$answer" in
                y)
                    echo "yes"
                    x=0
                    ;;
                n)
                    clear
                    echo "Thanks!"
                    sleep 2
                    exit
                    ;;
                *)
                    clear
                    echo "!!Wrong Input!!"
                    sleep 2
                    ;;
            esac

        #soal 2
        elif [ "$pilih" == 2 ]
            then
                echo -n "Masukkan Alas: "
                read a
                echo -n "Masukkan Tinggi: "
                read t
                luas=$(expr $a \* $t \* 1 / 2)
                echo "Luas Segitiga: $luas"

                sleep 2

                echo "continue? (y/n)"
                read answer
                case "$answer" in
                    y)
                        echo "yes"
                        x=0
                        ;;
                    n)
                        clear
                        echo "Thanks!"
                        sleep 2
                        exit
                        ;;
                    *)
                        clear
                        echo "!!Wrong Input!!"
                        sleep 2
                        ;;
                esac

        #soal 3
        elif [ $pilih == 3 ]
            then
                echo -n "Masukkan Panjang Rusuk: "
                read s
                luas=$(expr 6 \* $s \* $s)
                echo "Luas Permukaan Kubus: $luas"

                sleep 2

                echo "continue? (y/n)"
                read answer
                case "$answer" in
                    y)
                        echo "yes"
                        x=0
                        ;;
                    n)
                        clear
                        echo "Thanks!"
                        sleep 2
                        exit
                        ;;
                    *)
                        clear
                        echo "!!Wrong Input!!"
                        sleep 2
                        ;;
                esac

        #soal 4
        elif [ $pilih == 4 ]
            then
                echo -n "Masukkan Panjang: "
                read p
                echo -n "Masukkan Lebar: "
                read l
                echo -n "Masukkan Tinggi: "
                read t
                pl=$(expr $p \* $l)
                pt=$(expr $p \* $t)
                lt=$(expr $l \* $t)
                tambah=$(expr $pl + $pt + $lt)
                luas=$(expr 2 \* $tambah)
                echo "Luas Permukaan Balok: $luas"

                sleep 2

                echo "continue? (y/n)"
                read answer
                case "$answer" in
                    y)
                        echo "yes"
                        x=0
                        ;;
                    n)
                        clear
                        echo "Thanks!"
                        sleep 2
                        exit
                        ;;
                    *)
                        clear
                        echo "!!Wrong Input!!"
                        sleep 2
                        ;;
                esac

        #soal 5
        elif [ $pilih == 5 ]
            then
                echo -n "Masukkan Panjang Rusuk: "
                read s
                volume=$(expr $s \* $s \* $s)
                echo "Volume Kubus: $volume"

                sleep 2

                echo "continue? (y/n)"
                read answer
                case "$answer" in
                    y)
                        echo "yes"
                        x=0
                        ;;
                    n)
                        clear
                        echo "Thanks!"
                        sleep 2
                        exit
                        ;;
                    *)
                        clear
                        echo "!!Wrong Input!!"
                        sleep 2
                        ;;
                esac

        #soal 6
        elif [ $pilih == 6 ]
            then
                echo -n "Masukkan Panjang: "
                read p
                echo -n "Masukkan Lebar: "
                read l
                echo -n "Masukkan Tinggi: "
                read t
                volume=$(expr $p \* $l \* $t)
                echo "Volume Balok: $volume"

                sleep 2

                echo "continue? (y/n)"
                read answer
                case "$answer" in
                    y)
                        echo "yes"
                        x=0
                        ;;
                    n)
                        clear
                        echo "Thanks!"
                        sleep 2
                        exit
                        ;;
                    *)
                        clear
                        echo "!!Wrong Input!!"
                        sleep 2
                        ;;
                esac

        elif [ $pilih == 7 ]
            then
                clear
                echo "Thanks!"
                sleep 2
                exit

        else
            echo "!!Wrong Input!!"
            echo "Continue? (y/n)"
            read answer
            case "$answer" in
                y)
                    echo "yes"
                    x=0
                    ;;
                n)
                    clear
                    echo "Thanks!"
                    sleep 2
                    exit
                    ;;
                *)
                    clear
                    echo "!!Wrong Input!!"
                    sleep 2
                    ;;
            esac
        fi
done
