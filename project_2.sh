#!/bin/bash

#-------------MAIN MENU-------------#
menu (){
    again='y'
    while [ $again == 'y' ] || [ $again == 'Y' ]
    do

        clear
        echo "--CONVERSION CALCULATOR--"
        echo "--Choose what you need!--"
        echo ""
        echo "1. Temperature"
        echo "2. Length"
        echo "3. Time"
        echo "4. Volume"
        echo "5. Calculator"
        echo "6. Exit"
        read -p "Input (1-7): " pilih
        
        case "$pilih" in
            1)
                menu_temperature
                ;;
            2)
                menu_length
                ;;
            3)
                menu_time
                ;;
            4)
                menu_volume
                ;;
            5)
                menu_calculator
                ;;
            6)
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

    done
}
#-------------END OF MAIN MENU-------------#

#-------------TEMPERATURE MENU-------------#
menu_temperature (){
    while [ $again == 'y' ] || [ $again == 'Y' ]
    do

        clear

        echo "--TEMPRATURE CONVERSION--"
        echo "1. Celcius"
        echo "2. Fahrenheit"
        echo "3. Kelvin"
        echo "4. Back"
        read -p "Input (1-4): " temperature

        case "$temperature" in
            1)
                menu_celcius
                ;;
            2)
                menu_fahrenheit
                ;;
            3)
                menu_kelvin
                ;;
            4)
                menu
                ;;
            *)
                clear
                echo "!!Invalid!!"
                sleep 2
                ;;
        esac

    done
}

#-------------CELCIUS MENU-------------#
menu_celcius (){
    while [ $again == 'y' ] || [ $again == 'Y' ]
    do

        clear
        echo "--CELSIUS (C) CONVERSION--"
        echo "1. To Fahrenheit"
        echo "2. To Kelvin"
        echo "3. Back"
        read -p "Input (1-3): " celcius

        case "$celcius" in
            #-------------TO FAHRENHEIT-------------#
            1)
                clear
                read -p "C = " c_to_f
                echo -n "$c_to_f C = "
                awk "BEGIN {print (9/5*$c_to_f)+32}"
                sleep 2
                ;;
            
            #-------------TO KELVIN-------------#
            2)
                clear
                read -p "C = " c_to_k
                echo "$c_to_k C = $[$[$c_to_k + 273]] K"
                sleep 2
                ;;
            
            #-------------CALL BACK 1 LAYER-------------#
            3)
                menu_temperature
                ;;
            
            #-------------NO OPTION (CELCIUS MENU)-------------#
            *)
                clear
                echo "!!Invalid!!"
                sleep 2
                ;;
        esac

        call_back

    done
}

#-------------FAHRENHEIT MENU-------------#
menu_fahrenheit(){
    while [ $again == 'y' ] || [ $again == 'Y' ]
    do

        clear
        echo "--FAHRENHEIT (F) CONVERSION--"
        echo "1. To Celcius"
        echo "2. To Kelvin"
        echo "3. Back"
        read -p "Input (1-3): " fahrenheit

        case "$fahrenheit" in
            #-------------TO CELCIUS------------#
            1)
                clear
                read -p "F = " f_to_c
                echo "$f_to_c F = $[$[$f_to_c - 32]*5/9] C"
                sleep 2
                ;;

            #-------------TO KELVIN------------#
            2)
                clear
                read -p "F = " f_to_k
                echo "$f_to_k F = $[$[$f_to_k - 32]*5/9+273] K"
                sleep 2
                ;;
            
            #-------------CALL BACK 1 LAYER-------------#
            3)
                menu_temperature
                ;;

            #-------------NO OPTION (FAHRENHEIT MENU)-------------#
            *)
                clear
                echo "!!Invalid!!"
                sleep 2
                ;;
        esac

        call_back

    done
}

menu_kelvin (){
    while [ $again == 'y' ] || [ $again == 'Y' ]
    do

        clear

        echo "--KELVIN (K) CONVERSION--"
        echo "1. To Celcius"
        echo "2. To Fahrenheit"
        echo "3. Back"
        read -p "Input (1-3): " kelvin

        case "$kelvin" in
            #-------------TO CELCIUS------------#
            1)
                clear
                read -p "K = " k_to_c
                echo "$k_to_c K = $[$[$k_to_c - 273]] C"
                sleep 2
                ;;

            #-------------TO FAHRENHEIT------------#
            2)
                clear
                read -p "K = " k_to_f
                echo "$k_to_f K = $[$[$k_to_f - 273]*9/5+32] F"
                sleep 2
                ;;
            
            #-------------CALL BACK 1 LAYER-------------#
            3)
                menu_temperature
                ;;

            #-------------NO OPTION (KELVIN MENU)-------------#
            *)
                clear
                echo "!!Invalid!!"
                sleep 2
                ;;
        esac

        call_back

    done   
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

#-------------CALL BACK 1 LAYER-------------#
call_back (){
    echo " "
    read -p "Continue? [y/n]" answer 
        
    case "$answer" in
        y)
            menu
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
}

menu