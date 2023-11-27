#!/bin/bash
#Authir: Alex Sitan
source degreesTemperature.sh
source style.sh
function typetempe(){
	echo -e "\n\n\t\t${purpleColour}tipo de temperatura actual?${endColoir}\n\n"
	echo -e "\t[c]${naranjaColour} Celsius${endColour}\n"
	echo -e "\t[f]${skyblueColour}Fahrenheit${endColou}\n"
	echo -e "\t[k]${yellowColour} Kelvin${endColour}\n"
	read -p "ingrese opsion: " ttmp
	case $ttmp in
		c) read -p "ingrese su temperatura: " tmp;
			convertir_a_fahrenheit $tmp;
			convertir_kelvin $tmp;;
		f) read -p "ingrese su temperatura: " tmp1;
			convertir_celsius $tmp1;
			tmp11=$(resulget $tmp1);
			convertir_kelvin $tmp11;;
		k) read -p "ingrese su temperatura: " tmp2;
			reverskelvin $tmp2;
			reverskelvin2 $cll;;
		*) echo "opsion no valida";;
	esac
}
typetempe
