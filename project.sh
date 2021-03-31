#!/bin/sh

#-------------MAIN MENU-------------#
menu (){
    echo "--CONVERSION CALCULATOR--"
    echo "--Choose what you need!--"
    echo ""
    echo "1. Temprature"
    echo "2. Length"
    echo "3. Weight"
    echo "4. Time"
    echo "5. Volume"
    echo "6. Calculator"
    echo "7. Exit"
    read -p "Input (1-7): " pilih
}

#-------------TEMPERATURE MENU-------------#
menu_temperature (){
    echo "--TEMPRATURE CONVERSION--"
    echo "1. Celcius"
    echo "2. Fahrenheit"
    echo "3. Kelvin"
    echo "4. Back"
    read -p "Input (1-4): " temperature
}

menu_celcius (){
    echo "--CELSIUS CONVERSION--"
    echo "1. To Fahrenheit"
    echo "2. To Kelvin"
    echo "3. Back"
    read -p "Input (1-3): " celcius
}

menu_fahrenheit(){
    echo "--FAHRENHEIT CONVERSION--"
    echo "1. To Celcius"
    echo "2. To Kelvin"
    echo "3. Back"
    read -p "Input (1-3): " fahrenheit
}

menu_kelvin (){
    echo "--KELVIN CONVERSION--"
    echo "1. To Celcius"
    echo "2. To Fahrenheit"
    echo "3. Back"
    read -p "Input (1-3): " kelvin
}

#-------------VOLUME MENU-------------#


#-------------LENGTH MENU-------------#


#-------------TIME MENU-------------#


#-------------CALCULATOR MENU-------------#
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
    #-------------MAIN MENU-------------#
    clear
    menu
    
    #-------------MENU_TEMPRATURE-------------#
    if [ "$pilih" = 1 ]
    then
        clear
        menu_temperature
        
        #-------------CELCIUS-------------#
        if [ "$temperature" = 1 ]
        then
            clear
            menu_celcius
            
            #-------------TO FAHRENHEIT-------------#
            if [ "$celcius" = 1 ]
            then
                clear
                read -p "C = " c_to_f
                echo -n "$c_to_f C = "
				awk "BEGIN {print (9/5*$c_to_f)+32}"

            #-------------TO KELVIN-------------#
            elif [ "$celcius" = 2 ]
            then
                clear
                read -p "C = " c_to_k
                echo "$c_to_k C = $[$[$c_to_k + 273]] K"
                
            #-------------BACK (ERROR)-------------#
            elif [ "$celcius" = 3 ]
            then
                clear
                menu_temperature
                
            #-------------NO OPTION (MENU CELCIUS)-------------#
            else
                clear
                echo "!!Invalid!!"
                sleep 2
                
            fi
            
        #-------------FAHRENHEIT-------------#
        elif [ "$temperature" = 2 ]
        then
            clear
            menu_fahrenheit
            
            #-------------TO CELCIUS------------#
            if [ "$fahrenheit" = 1 ]
            then
                clear
                read -p "F = " f_to_c
                echo "$f_to_c F = $[$[$f_to_c - 32]*5/9] C"
                
            #-------------TO KELVIN------------#
            elif [ "$fahrenheit" = 2 ]
            then
                clear
                read -p "F = " f_to_k
                echo "$f_to_k F = $[$[$f_to_k - 32]*5/9+273] K"
                
            #-------------BACK (ERROR)-------------#
            elif [ "$fahrenheit" = 3 ]
            then
                clear
                menu_temperature
                
            #-------------NO OPTION (MENU FAHRENHEIT)-------------#
            else
                clear
                echo "!!Invalid!!"
                sleep 2
                
            fi
            
        #-------------KELVIN-------------#
        elif [ "$temperature" = 3 ]
        then
            clear
            menu_kelvin
            
            #-------------TO CELCIUS------------#
            if [ "$kelvin" = 1 ]
            then
                clear
                read -p "K = " k_to_c
                echo "$k_to_c K = $[$[$k_to_c - 273]] C"
                
            #-------------TO FAHRENHEIT------------#
            elif [ "$kelvin" = 2 ]
            then
                clear
                read -p "K = " k_to_f
                echo "$k_to_f K = $[$[$k_to_f - 273]*9/5+32] F"
                
            #-------------BACK (ERROR)-------------#
            elif [ "$kelvin" = 3 ]
            then
                clear
                menu_temperature
                
            #-------------NO OPTION (MENU KELVIN)-------------#
            else
                clear
                echo "!!Invalid!!"
                sleep 2
                
            fi
            
        #-------------BACK (ERROR)-------------#
        elif [ "$temperature" = 4 ]
        then
            clear
            menu_temperature
            
        #-------------NO OPTION (MENU TEMPRATURE CONVERSION)-------------#
        else
            clear
            echo "!!Invalid!!"
            sleep 2
            
        fi
        
        echo " "
        echo "Continue? (y/n) temperature"
        read answer
        
        case "$answer" in
            y)
                echo "yes"
                x=0
            ;;
            n)
                clear
                echo "Thanks!"
                exit
            ;;
            *)
                clear
                echo "!!Invalid!!"
                sleep 2
            ;;
        esac
    #-------------END OF TEMPERATURE-------------#


    #-------------CALCULATOR-------------#
    elif [ "$pilih" = 6 ]
    then
        #-------------MENU_NUM-------------#
        clear
        menu_num

        #-------------MENU_CALCULATOR------------#
        echo " "
        menu_calculator

        #-------------PENJUMLAHAN-------------#
        if [ "$calc" = 1 ]
        then
            echo "Jumlah penjumlahan2 $bil1 dengan $bil2 = $[bil1+bil2]"

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

    echo " "
    echo "Continue? (y/n) calc"
    read answer
        
    case "$answer" in
        y)
            echo "yes"
            x=0
            ;;
        n)
            clear
            echo "Thanks!"
            exit
            ;;
        *)
            clear
            echo "!!Invalid!!"
            sleep 2
            ;;
    esac
    #-------------END OF CALCULATOR-------------#

    #-------------EXIT-------------#
    elif [ "$pilih" = 7 ]
    then
        clear
        echo "Thanks!"
        exit
    #-------------END OF EXIT-------------#
        
    #-------------NO OPTION (MAIN MENU)-------------#
    else
        clear
        echo "!!Invalid!!"
        sleep 2
        echo " "
        echo "Continue? (y/n) 2"
        read answer
        
        case "$answer" in
            y)
                echo "yes"
                x=0
            ;;
            n)
                clear
                echo "Thanks!"
                exit
            ;;
            *)
                clear
                echo "!!Invalid!!"
                sleep 2
            ;;
        esac
        
    fi

    #-------------END OF ALL-------------#
done

