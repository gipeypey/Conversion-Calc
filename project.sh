#!/bin/bash

#-------------MAIN MENU-------------#
menu (){
    echo "--CONVERSION CALCULATOR--"
    echo "--Choose what you need!--"
    echo ""
    echo "1. Temprature"
    echo "2. Length"
    echo "3. Time"
    echo "4. Volume"
    echo "5. Calculator"
    echo "6. Exit"
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
    echo "--CELSIUS (C) CONVERSION--"
    echo "1. To Fahrenheit"
    echo "2. To Kelvin"
    echo "3. Back"
    read -p "Input (1-3): " celcius
}

menu_fahrenheit(){
    echo "--FAHRENHEIT (F) CONVERSION--"
    echo "1. To Celcius"
    echo "2. To Kelvin"
    echo "3. Back"
    read -p "Input (1-3): " fahrenheit
}

menu_kelvin (){
    echo "--KELVIN (K) CONVERSION--"
    echo "1. To Celcius"
    echo "2. To Fahrenheit"
    echo "3. Back"
    read -p "Input (1-3): " kelvin
}

#-------------VOLUME MENU-------------#
menu_volume (){
    echo "--VOLUME CONVERSION--"
    echo "1. Cubic Meter"
    echo "2. Liter"
    echo "3. Milliliter"
    echo "4. Back"
    read -p "Input (1-4): " volume
}

menu_cubic (){
    echo "--CUBIC METER (m3) CONVERSION--"
    echo "1. To Liter"
    echo "2. To Milliliter"
    echo "3. Back"
    read -p "Input (1-3): " cubic
}

menu_liter (){
    echo "--Liter (L) CONVERSION--"
    echo "1. To Cubic Meter"
    echo "2. To Milliliter"
    echo "3. Back"
    read -p "Input (1-3): " liter
}

menu_milliliter (){
    echo "--MILLILITER (ml3) CONVERSION--"
    echo "1. To Cubic Meter"
    echo "2. To Liter"
    echo "3. Back"
    read -p "Input (1-3): " milliliter
}

#-------------LENGTH MENU-------------#
menu_length (){
    echo "--LENGTH CONVERSION--"
    echo "1. Kilometer"
    echo "2. Meter"
    echo "3. Foot"
    echo "4. Back"
    read -p "Input (1-4): " length
}

menu_kilometer (){
    echo "--KILOMETER (km) CONVERSION--"
    echo "1. To Meter"
    echo "2. To Foot"
    echo "3. Back"
    read -p "Input (1-3): " kilometer
}

menu_meter (){
    echo "--METER (m) CONVERSION--"
    echo "1. To Kilometer"
    echo "2. To Foot"
    echo "3. Back"
    read -p "Input (1-3): " meter
}

menu_foot (){
    echo "--FOOT (ft) CONVERSION--"
    echo "1. To Kilometer"
    echo "2. To Meter"
    echo "3. Back"
    read -p "Input (1-3): " foot
}

#-------------TIME MENU-------------#
menu_time (){
    echo "--TIME CONVERSION--"
    echo "1. Hour"
    echo "2. Minute"
    echo "3. Second"
    echo "4. Back"
    read -p "Input (1-4): " time
}

menu_hour (){
    echo "--HOUR (hr) CONVERSION--"
    echo "1. To Minute"
    echo "2. To Second"
    echo "3. Back"
    read -p "Input (1-3): " hour
}

menu_minute (){
    echo "--Kilometer (km) CONVERSION--"
    echo "1. To Hour"
    echo "2. To Second"
    echo "3. Back"
    read -p "Input (1-3): " minute
}

menu_second (){
    echo "--Kilometer (km) CONVERSION--"
    echo "1. To Hour"
    echo "2. To Minute"
    echo "3. Back"
    read -p "Input (1-3): " second
}

#-------------CALCULATOR MENU-------------#
menu_calculator (){
    echo "--CALCULATOR--"
    echo "1. PENJUMLAHAN"
    echo "2. PENGURANGAN"
    echo "3. PERKALIAN"
    echo "4. PEMBAGIAN"
    echo "5. Exit"
    read -p "Input (1-5): " calculator
}

menu_num(){
    read -p "Input num1 = " num1
    read -p "Input num2 = " num2
}
#-------------END OF MAIN MENU-------------#

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
    elif [ "$pilih" = 5 ]
    then
        #-------------MENU_NUM-------------#
        clear
        menu_num

        #-------------MENU_CALCULATOR------------#
        echo " "
        menu_calculator

        #-------------PENJUMLAHAN-------------#
        if [ "$calculator" = 1 ]
        then
            echo "Jumlah penjumlahan $num1 dengan $num2 = $[num1+num2]"

        #-------------PENGURANGAN-------------#
        elif [ "$calculator" = 2 ]
        then
            echo "Jumlah pengurangan $num1 dengan $num2 = $[num1-num2]"

        #-------------PERKALIAN-------------#
        elif [ "$calculator" = 3 ]
        then
            echo "Jumlah perkalian $num1 dengan $num2 = $[num1*num2]"

        #-------------PEMBAGIAN-------------#
        elif [ "$calculator" = 4 ]
        then
            echo "Jumlah pembagian $num1 dengan $num2 = $[num1/num2]"

        #-------------BACK (ERROR)-------------#
        elif [ "$calculator" = 5 ]
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
    elif [ "$pilih" = 6 ]
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
        # echo " "
        # echo "Continue? (y/n) 2"
        # read answer
        
        # case "$answer" in
        #     y)
        #         echo "yes"
        #         x=0
        #     ;;
        #     n)
        #         clear
        #         echo "Thanks!"
        #         exit
        #     ;;
        #     *)
        #         clear
        #         echo "!!Invalid!!"
        #         sleep 2
        #     ;;
        # esac
        
    fi

    #-------------END OF ALL-------------#
done

