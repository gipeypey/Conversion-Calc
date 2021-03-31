#!/bin/bash

#-------------MAIN MENU-------------#
menu (){
    lagi='y'
    while [ $lagi == 'y' ] || [ $lagi == 'Y' ]
    do

        clear
        echo "+====================================+"
        echo "||                                  ||"
        echo "||                                  ||"
        echo "||                                  ||"
        echo "||                                  ||"
        echo "|| Selamat Datang di Yummysmoothies ||"
        echo "|| 1. Pesan                         ||"
        echo "|| 2. Keluar                        ||"
        echo "||                                  ||"
        echo "||                                  ||"
        echo "||                                  ||"
        echo "||                                  ||"
        echo "+====================================+"
        read -p "Input (1-2): " pilih
        
        case "$pilih" in
            1)
                menu_pesan
                ;;
            2)
                clear
                "Terima Kasih telah Berbelanja di Yummysmoothies"
                exit
                ;;
            *)
                clear
                echo "!!Invalid!!"
                sleep 2
                ;;
        esac

    done
}
#-------------END OF MAIN MENU-------------#

#-------------MENU PESAN-------------#
menu_pesan (){
    lagi='y'
    while [ $lagi == 'y' ] || [ $lagi == 'Y' ]
    do
        
        clear

    done
}