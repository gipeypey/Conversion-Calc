#!/bin/bash

#----------------------------------------START---------------------------------------#
#-------------MAIN MENU-------------#
menu (){
    again='y'
    while [ $again == 'y' ] || [ $again == 'Y' ]
    do

        clear
        echo "--CONVERSION CALCULATOR 2022--"
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
                menu_waktu
                ;;
            4)
                menu_volume
                ;;
            5)
                menu_num
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
        echo "1. Celsius"
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

#-------------CELSIUS MENU-------------#
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
            
            #------------NO OPTION (CELSIUS MENU)-------------#
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
        echo "1. To Celsius"
        echo "2. To Kelvin"
        echo "3. Back"
        read -p "Input (1-3): " fahrenheit

        case "$fahrenheit" in
            #-------------TO CELSIUS------------#
            1)
                clear
                read -p "F = " f_to_c
                echo -n "$f_to_c F = "
                awk "BEGIN {print ($f_to_c - 32)*5/9}"
                sleep 2
                ;;

            #-------------TO KELVIN------------#
            2)
                clear
                read -p "F = " f_to_k
                echo -n "$f_to_k F = "
                awk "BEGIN {print ($f_to_k - 32)*5/9+273}"
                sleep 2
                ;;
            
            #-------------CALL BACK 1 LAYER-------------#
            3)
                menu_temperature
                ;;

            #------------NO OPTION (FAHRENHEIT MENU)-------------#
            *)
                clear
                echo "!!Invalid!!"
                sleep 2
                ;;
        esac

        call_back

    done
}

#-------------KELVIN MENU-------------#
menu_kelvin (){
    while [ $again == 'y' ] || [ $again == 'Y' ]
    do

        clear
        echo "--KELVIN (K) CONVERSION--"
        echo "1. To Celsius"
        echo "2. To Fahrenheit"
        echo "3. Back"
        read -p "Input (1-3): " kelvin

        case "$kelvin" in
            #-------------TO CELSIUS------------#
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
                echo -n "$k_to_f K = "
                awk "BEGIN {print ($k_to_f - 273)*9/5+32}"
                sleep 2
                ;;
            
            #-------------CALL BACK 1 LAYER-------------#
            3)
                menu_temperature
                ;;

            #------------NO OPTION (KELVIN MENU)-------------#
            *)
                clear
                echo "!!Invalid!!"
                sleep 2
                ;;
        esac

        call_back

    done   
}
#-------------END OF TEMPERATURE MENU-------------#

#-------------LENGTH MENU-------------#
menu_length (){
    while [ $again == 'y' ] || [ $again == 'Y' ]
    do

        clear
        echo "--LENGTH CONVERSION--"
        echo "1. Kilometre"
        echo "2. Meter"
        echo "3. Foot"
        echo "4. Back"
        read -p "Input (1-4): " length

        case "$length" in
            1)
                menu_kilometer
                ;;
            2)
                menu_meter
                ;;
            3)
                menu_foot
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

        call_back

    done      
}

#-------------KILOMETRE MENU-------------#
menu_kilometer (){
    while [ $again == 'y' ] || [ $again == 'Y' ]
    do

        clear
        echo "--KILOMETRE (km) CONVERSION--"
        echo "1. To Meter"
        echo "2. To Foot"
        echo "3. Back"
        read -p "Input (1-3): " kilometer
        
        case "$kilometer" in
            #-------------TO METER-------------#
            1)
                clear
                read -p "km = " km_to_m
                echo  "$km_to_m km = $[$[$km_to_m * 1000]] m"
                sleep 2
                ;;
                
            #-------------TO FOOT-------------#
            2)
                clear
                read -p "km = " km_to_ft
                echo  "$km_to_ft km = $[$[$km_to_ft * 3281]] ft"
                sleep 2
                ;;
                
            #-------------CALL BACK 1 LAYER-------------#
            3)
                menu_length
                ;;
                
            #------------NO OPTION (KILOMETRE MENU)-------------#
            *)
                clear
                echo "!!Invalid!!"
                sleep 2
                ;;
        esac

        call_back

    done
}

#-------------METER MENU-------------#
menu_meter (){
    while [ $again == 'y' ] || [ $again == 'Y' ]
    do
        clear
        echo "--METER (m) CONVERSION--"
        echo "1. To Kilometre"
        echo "2. To Foot"
        echo "3. Back"
        read -p "Input (1-3): " meter

        case "$meter" in
            #-------------TO KILOMETRE-------------#
            1)
                clear
                read -p "m = " m_to_km
                echo -n "$m_to_km m = "
                awk "BEGIN {print $m_to_km / 1000}"
                sleep 2
                ;;
            
            #-------------TO FOOT-------------#
            2)
                clear
                read -p "m = " m_to_ft
                echo -n "$m_to_ft m = "
                awk "BEGIN {print $m_to_ft * 3.281}"
                sleep 2
                ;;
            
            #-------------CALL BACK 1 LAYER-------------#
            3)
                menu_length
                ;;
            
            #------------NO OPTION (METER MENU)-------------#
            *)
                clear
                echo "!!Invalid!!"
                sleep 2
                ;;
        esac

        call_back

    done
}

#-------------FOOT MENU-------------#
menu_foot (){
    while [ $again == 'y' ] || [ $again == 'Y' ]
    do
    
        clear
        echo "--FOOT (ft) CONVERSION--"
        echo "1. To Kilometre"
        echo "2. To Meter"
        echo "3. Back"
        read -p "Input (1-3): " foot

        case "$foot" in
            #-------------TO KILOMETRE-------------#
            1)
                clear
                read -p "ft = " ft_to_km
                 echo -n "$ft_to_km ft = "
                awk "BEGIN {print $ft_to_km / 3281}"
                sleep 2
                ;;
            
            #-------------TO METER-------------#
            2)
                clear
                read -p "ft = " ft_to_m
                echo -n "$ft_to_m ft = "
                awk "BEGIN {print $ft_to_m / 3.281}"
                sleep 2
                ;;
            
            #-------------CALL BACK 1 LAYER-------------#
            3)
                menu_length
                ;;
            
            #------------NO OPTION (FOOT MENU)-------------#
            *)
                clear
                echo "!!Invalid!!"
                sleep 2
                ;;
        esac

        call_back

    done
}
#-------------END OF LENGTH MENU-------------#

#-------------TIME MENU-------------#
menu_waktu (){
    while [ $again == 'y' ] || [ $again == 'Y' ]
    do

        clear
        echo "--TIME CONVERSION--"
        echo "1. Hour"
        echo "2. Minute"
        echo "3. Second"
        echo "4. Back"
        read -p "Input (1-4): " waktu

        case "$waktu" in
            1)
                menu_hour
                ;;
            2)
                menu_minute
                ;;
            3)
                menu_second
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

        call_back

    done
}

#-------------HOUR MENU-------------#
menu_hour (){
    while [ $again == 'y' ] || [ $again == 'Y' ]
    do

        clear
        echo "--HOUR (hr) CONVERSION--"
        echo "1. To Minute"
        echo "2. To Second"
        echo "3. Back"
        read -p "Input (1-3): " hour
        
        case "$hour" in
            #-------------TO MINUTE-------------#
            1)
                clear
                read -p "hr = " hr_to_mnt
                echo "$hr_to_mnt hr = $[$[$hr_to_mnt * 60]] mnt"
                sleep 2
                ;;
            
            #-------------TO SECOND-------------#
            2)
                clear
                read -p "hr = " hr_to_sec
                echo "$hr_to_sec hr = $[$[$hr_to_sec * 3600]] sec"
                sleep 2
                ;;
            
            #-------------CALL BACK 1 LAYER-------------#
            3)
                menu_waktu
                ;;
            
            #------------NO OPTION (HOUR MENU)-------------#
            *)
                clear
                echo "!!Invalid!!"
                sleep 2
                ;;
        esac

        call_back

    done
}

#-------------MINUTE MENU-------------#
menu_minute (){
    while [ $again == 'y' ] || [ $again == 'Y' ]
    do

        clear
        echo "--Minute (mnt) CONVERSION--"
        echo "1. To Hour"
        echo "2. To Second"
        echo "3. Back"
        read -p "Input (1-3): " minute

        case "$minute" in
            #-------------TO HOUR-------------#
            1)
                clear
                read -p "mnt = " mnt_to_hr
                echo -n "$mnt_to_hr mnt = "
                awk "BEGIN {print $mnt_to_hr / 60}"
                sleep 2
                ;;
            
            #-------------TO SECOND-------------#
            2)
                clear
                read -p "mnt = " mnt_to_sec
                echo "$mnt_to_sec mnt = $[$[$mnt_to_sec * 60]] sec"
                sleep 2
                ;;
            
            #-------------CALL BACK 1 LAYER-------------#
            3)
                menu_waktu
                ;;
            
            #------------NO OPTION (MINUTE MENU)-------------#
            *)
                clear
                echo "!!Invalid!!"
                sleep 2
                ;;
        esac

        call_back

    done
}

#-------------SECOND MENU-------------#
menu_second (){
    while [ $again == 'y' ] || [ $again == 'Y' ]
    do

        clear
        echo "--Second (sec) CONVERSION--"
        echo "1. To Hour"
        echo "2. To Minute"
        echo "3. Back"
        read -p "Input (1-3): " second

        case "$second" in
            #-------------TO HOURS------------#
            1)
                clear
                read -p "sec = " sec_to_hr
                echo -n "$sec_to_hr sec = "
                awk "BEGIN {print $sec_to_hr / 3600}"
                sleep 2
                ;;

            #-------------TO MINUTE------------#
            2)
                clear
                read -p "sec = " sec_to_mnt
                echo -n "$sec_to_mnt sec = "
                awk "BEGIN {print $sec_to_mnt / 60}"
                sleep 2
                ;;
            
            #-------------CALL BACK 1 LAYER-------------#
            3)
                menu_waktu
                ;;

            #------------NO OPTION (SECOND MENU)-------------#
            *)
                clear
                echo "!!Invalid!!"
                sleep 2
                ;;
        esac

        call_back

    done
}
#-------------END OF TIME MENU-------------#

#-------------VOLUME MENU-------------#
menu_volume (){
    while [ $again == 'y' ] || [ $again == 'Y' ]
    do

        clear 
        
        echo "--VOLUME CONVERSION--"
        echo "1. Cubic Meter"
        echo "2. Liter"
        echo "3. Milliliter"
        echo "4. Back"
        read -p "Input (1-4): " volume

        case "$volume" in
            1)
                menu_cubic
                ;;
            2)
                menu_liter
                ;;
            3)
                menu_milliliter
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

#-------------CUBIC MENU-------------#
menu_cubic (){
    while [ $again == 'y' ] || [ $again == 'Y' ]
    do
    
        clear 
        echo "--CUBIC METER (m3) CONVERSION--"
        echo "1. To Liter"
        echo "2. To Milliliter"
        echo "3. Back"
        read -p "Input (1-3): " cubic

        case "$cubic" in
            #-------------TO LITER-------------#
            1)
                clear
                read -p "m3 = " m3_to_l
                echo "$m3_to_l m3 =$[$[$m3_to_l * 1000]] l"
                sleep 2
                ;;
            
            #-------------TO MILLILITER-------------#
            2)
                clear
                read -p "m3 = " m3_to_ml
                echo "$m3_to_ml m3 = $[$[$m3_to_ml * 1000000]] ml"
                sleep 2
                ;;
            
            #-------------CALL BACK 1 LAYER-------------#
            3)
                menu_volume
                ;;
            
            #------------NO OPTION (VOLUME MENU)-------------#
            *)
                clear
                echo "!!Invalid!!"
                sleep 2
                ;;
        esac

        call_back

    done
}

#-------------LITER MENU-------------#
menu_liter (){
    while [ $again == 'y' ] || [ $again == 'Y' ]
    do

        clear
        echo "--Liter (L) CONVERSION--"
        echo "1. To Cubic Meter"
        echo "2. To Milliliter"
        echo "3. Back"
        read -p "Input (1-3): " liter

        case "$liter" in
                #-------------TO CUBIC METER-------------#
                1)
                    clear
                    read -p "l = " l_to_m3
                    echo -n "$l_to_m3 l = "
                    awk "BEGIN {print $l_to_m3 / 1000}"
                    sleep 2
                    ;;
                
                #-------------TO MILILITER-------------#
                2)
                    clear
                    read -p "l = " l_to_ml
                    echo "$l_to_ml l = $[$[$l_to_ml * 1000]] m3"
                    sleep 2
                    ;;
                
                #-------------CALL BACK 1 LAYER-------------#
                3)
                    menu_volume
                    ;;
                
                #------------NO OPTION (VOLUME MENU)-------------#
                *)
                    clear
                    echo "!!Invalid!!"
                    sleep 2
                    ;;
        esac

        call_back

    done
}

#-------------MILLILITER MENU-------------#
menu_milliliter (){
    while [ $again == 'y' ] || [ $again == 'Y' ]
    do

        clear
        echo "--MILLILITER (ml3) CONVERSION--"
        echo "1. To Cubic Meter"
        echo "2. To Liter"
        echo "3. Back"
        read -p "Input (1-3): " milliliter
            
        case "$milliliter" in
                #-------------TO CUBIC METER-------------#
                1)
                    clear
                    read -p "ml = " ml_to_m3
                    echo -n "$ml_to_m3 ml = "
                    awk "BEGIN {print $ml_to_m3 / 1000000}"
                    sleep 2
                    ;;
                
                #-------------TO LITER-------------#
                2)
                    clear
                    read -p "ml = " ml_to_l
                    echo -n "$ml_to_l ml = "
                    awk "BEGIN {print $ml_to_l / 1000}"
                    sleep 2
                    ;;
                
                #-------------CALL BACK 1 LAYER-------------#
                3)
                    menu_volume
                    ;;
                
                #------------O OPTION (CELSIUS MENU)-------------#
                *)
                    clear
                    echo "!!Invalid!!"
                    sleep 2
                    ;;
        esac

        call_back

    done
}
#-------------END OF VOLUME MENU-------------#

#-------------CALCULATOR MENU-------------#
menu_num(){
    clear
    read -p "Input num1 = " num1
    read -p "Input num2 = " num2
    menu_calculator
}

menu_calculator (){
    while [ $again == 'y' ] || [ $again == 'Y' ]
    do

        clear
        echo "--CALCULATOR--"
        echo "1. (+) Addition"
        echo "2. (-) Substraction"
        echo "3. (*) Multiply"
        echo "4. (/) Divide"
        echo "5. Back"
        read -p "Input (1-5): " calculator

        case "$calculator" in
            1)
                clear
                echo -n "The result of $num1 + $num2 is $[num1+num2]"
                sleep 2
                ;;
            2)
                clear
                echo "The result of $num1 - $num2 is $[num1-num2]"
                sleep 2
                ;;
            3)
                clear
                echo "The result of $num1 x $num2 is $[num1*num2]"
                sleep 2
                ;;
            4)
                clear
                echo -n "The result of $num1 / $num2 is "
                awk "BEGIN {print $num1 / $num2}"
                sleep 2
                ;;
            5)
                menu
                ;;
            *)
                clear
                echo "!!Invalid!!"
                sleep 2
                ;;
        esac

        call_back

    done
}
#-------------END OF CALCULATOR MENU-------------#

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
#-------------END OF CALL BACK 1 LAYER-------------#

#----------------------------------------END OF ALL----------------------------------------#

#-------------RUNNING CODE------------#
menu