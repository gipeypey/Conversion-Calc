#!/bin/bash

c_to_f(){
	read -p "Enter degree celsius temperature: " c_to_f
	echo -n "Fahrenheit : "
	awk "BEGIN {print (9/5*$c_to_f)+32}"
}

c_to_k(){
	read -p "Enter degree celsius temperature: " c_to_k
	echo -n "Fahrenheit : "
	awk "BEGIN {print ($c_to_k+275)}"
}

menu_celcius () {
while [ $lagi == 'y' ] || [ $lagi == 'Y' ]
do
	clear

    echo "--CELSIUS CONVERSION--"
    echo "1. To Fahrenheit"
    echo "2. To Kelvin"
    echo "3. Back"
    read -p "Input (1-3):" celcius

	case $celcius in
		1)  
			c_to_f
			;;
		2)  
			c_to_k
			;;
		3)  
			exit
			;;
		*)  
			echo "Maaf, Pilihan Tidak tersedia"
			;;
	esac

	echo ""
	echo "Terimakasih telah menggunakan celcius conversion"
	echo ""
	echo -n "Ingin Lanjut ke Program celcius conversion? [y/n]: ";
	read lagi;

	while [ $lagi != 'y' ] && [ $lagi != 'Y' ] && [ $lagi != 'n' ] && [ $lagi != 'N' ];
	do

		echo "Maaf, input yang anda masukkan salah";
		echo -n "Ingin Lanjut ke Program Temperature Conversion? [y/n]: 2";
		read lagi;

	done

done
}

menu_temperature () {
while [ $lagi == 'y' ] || [ $lagi == 'Y' ]
do

    clear

    echo "--TEMPRATURE CONVERSION--"
    echo "1. Celcius"
    echo "2. Fahrenheit"
    echo "3. Kelvin"
    echo "4. Back"
    read -p "Input (1-4):" temperature
	echo ""

	case $temperature in
		1)  menu_celcius
			;;
		2)  ;;
	esac

	echo "Terimakasih telah menggunakan temperature conversion"
	echo ""
	echo -n "Ingin Lanjut ke Program TEMPERATURE CONVERSION[y] atau lanjut CONVERSION Calculator Yang Lain[n]? [y/n]: ";
	read lagi;

	while [ $lagi != 'y' ] && [ $lagi != 'Y' ] && [ $lagi != 'n' ] && [ $lagi != 'N' ];
	do
		echo "Maaf, input yang anda masukkan salah";
		echo -n "Ingin Lanjut ke Program Temperature Conversion? [y/n]: 1";
		read lagi;
	done

done

}

main_menu (){

lagi='y'
while [ $lagi == 'y' ] || [ $lagi == 'Y' ]
do
	clear

	echo "=====================================";
	echo "--      CONVERSION CALCULATOR      --"
	echo "=====================================";
	echo "--Choose what you need!--"
    echo ""
    echo "1. Temprature"
    echo "2. Length"
    echo "3. Weight"
    echo "4. Time"
    echo "5. Volume"
    echo "6. Calculator"
    echo "7. Exit"
	echo "=====================================";
	read -p "Masukkan Pilihan Anda [1-5]: " pil;
	echo "";

	case $pil in
	1)    
		temperature
		;;
	2)    
		Length
		;;
	3)  
		Weight
		;;
	4)    
		Time
		;;
	5)    
		Volume
		;;
	6)	
	  	Calculator
		;;
	7)  
	  	exit
		;;
    *)  
		echo "Maaf, Pilihan Tidak tersedia"
		;;

    esac

	echo "Terimakasih telah didalam CALCULATOR CONVERSION"
	echo ""
	echo -n "Ingin Lanjut ke Program CALCULATOR CONVERSION Yang Lain? [y/n]: ";
	read lagi;

	while [ $lagi != 'y' ] && [ $lagi != 'Y' ] && [ $lagi != 'n' ] && [ $lagi != 'N' ];
	do
		echo "Maaf, input yang anda masukkan salah";
		echo -n "Ingin Lanjut ke Program CALCULATOR CONVERSION Yang Lain? [y/n]: ";
		read lagi;
	done
done

}

main_menu