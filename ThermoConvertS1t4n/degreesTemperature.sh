#!/bin/bash
#Author: Alex-Sitan
source style.sh

function convertir_a_fahrenheit() {
    celsius=$1
    fahrenheit=$(echo "scale=2; $celsius * 1.8 + 32" | bc)
    echo -e "\n\t${skyblueColour}La temperatura en Fahrenheit es ${endColour}:${redColour} $fahrenheit°F${endColour}"
}

function reverskelvin(){
	kelvin=$1
	celsius0=$(echo "scale=2; 273.15 - $kelvin " | bc)
	echo -e "\n\t${naranjaColour}La temperatura a Celsius es${endColour}:${redColour} $celsius0°C ${endColour}"
	cll=$celsius0
}
#obtener solo los resuktado de los kelvin a celsius
function reverskelvin2(){
	celsiusrev=$1
	fahrenheitrev=$(echo "scale=2; $celsiusrev + 273.15 " | bc)
	echo -e "\n\t${skyblueColour}La temperatura a Farenheit es:${endColour} ${redColour} $fahrenheitrev°F ${endColour}"
}

#obtener solo el resultado de los celsius
function resulget(){
	fahrenheit0=$1
	celsius0=$(echo "scale=2; ($fahrenheit0 - 32) / 1.8" | bc)
	echo "$celsius0"
}

function convertir_celsius(){
	fahrenheit0=$1
	celsius0=$(echo "scale=2; ($fahrenheit0 - 32) / 1.8" | bc)
	echo -e "\n\t${naranjaColour}La temperatura en Celsius es${endColour}: ${redColour} $celsius0°C ${endColour}"
}

function convertir_kelvin(){
	celsiu=$1
	kelvin=$(echo "scale=2; $celsiu + 273.15" | bc)
	echo -e "\n\t${yellowColour}La temperatura en Kelvin es:${endColour} ${redColour} $kelvin K ${endColour}"
}

