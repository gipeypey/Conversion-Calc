#!/bin/sh

x=0
while [ $x = 0 ]
do
    clear
    menu

    #-------------TEMPRATURE-------------#
    if [ "$pilih" = 1 ]
        then
            clear
            menu_temprature

            #-------------CELCIUS-------------#
            if [ "$temprature" = 1 ]
                then
                    clear
                    menu_celcius

                    #-------------TO FAHRENHEIT-------------#
                    if [ "$celcius" = 1 ]
                        then
                            clear
                            read -p "C = " c_to_f
                            echo "$c_to_f C = $[$[$c_to_f * 9]/5+32] F"

                    #-------------TO KELVIN-------------#
                    elif [ "$celcius" = 2 ]
                        then
                            clear
                            read -p "C = " c_to_k
                            echo "$c_to_k C = $[$[$c_to_k + 273]] K"

                    #-------------BACK (ERROR)-------------#
                    elif [ "$celcius" = 3 ]
                        then
                            reload
                    else
                        clear
                        echo "!!Invalid!!"
                        sleep 2
                    fi

            #-------------FAHRENHEIT-------------#
            elif [ "$temprature" = 2 ]
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
                            reload

                    else
                        clear
                        echo "!!Invalid!!"
                        sleep 2

                    fi

            #-------------KELVIN-------------#
            elif [ "$temprature" = 3 ]
                then
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
                            reload

                    else
                        clear
                        echo "!!Invalid!!"
                        sleep 2

                    fi

            #-------------BACK (ERROR)-------------#
            elif [ "$temprature" = 4 ]
                then
                    x=0

            else
                clear
                echo "!!Invalid!!"
                sleep 2

            fi

            echo " "
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
                    exit
                    ;;
                *)
                    clear
                    echo "!!Invalid!!"
                    sleep 2
                    ;;
            esac
    
    else
        clear
        echo "!!!Invalid!!!!!!!!"
        sleep 2
        echo " "
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
                exit
                ;;
            *)
                clear
                echo "!!Invalid!!"
                sleep 2
                ;;
        esac

    fi
done

#-------------FUNCTION MENU-------------#
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

menu_temprature (){
    echo "--TEMPRATURE CONVERSION--"
    echo "1. Celcius"
    echo "2. Fahrenheit"
    echo "3. Kelvin"
    echo "4. Back"
    read -p "Input (1-4):" temprature
}

menu_celcius (){
    echo "--CELSIUS CONVERSION--"
    echo "1. To Fahrenheit"
    echo "2. To Kelvin"
    echo "3. Back"
    read -p "Input (1-3):" celcius
}

menu_fahrenheit(){
    echo "--FAHRENHEIT CONVERSION--"
    echo "1. To Celcius"
    echo "2. To Kelvin"
    echo "3. Back"
    read -p "Input (1-3):" fahrenheit
}

menu_kelvin (){
    echo "--KELVIN CONVERSION--"
    echo "1. To Celcius"
    echo "2. To Fahrenheit"
    echo "3. Back"
    read -p "Input (1-3):" kelvin
}
        

        