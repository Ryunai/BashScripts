#! /bin/bash
clear
echo "Hola, me llamo Anxo y este es mi script"


# Zona variables
# ===================================================


EntradaTeclado1=""
NumeroFicheros=""
Cabeza=""
Form=""
Contador="-1"
ZonaCreado="/tmp/"
TiempoEspera="1"

# Programa Principal
# ===============================
sleep 1
echo "==========================================================================="
echo "Desea Crear varios ficheros de forma automatica? [SI]"
echo "==========================================================================="
read EntradaTeclado1

sleep $TiempoEspera


if [ $EntradaTeclado1 = "SI" ];
then
	echo "Se iniciara el script de creacion automatica de ficheros, su respuesta fue ($EntradaTeclado1)"
	sleep $TiempoEspera
	clear
	echo "=============================================================================="
	echo "=============================================================================="
	echo "Introduzca un combre para los ficheros, sin su extension (sin .xx)"
	echo "=============================================================================="
	echo "=============================================================================="
	read Cabeza
	clear
	echo "=============================================================================="
	echo "=============================================================================="
	echo "Introduzca ahora lo que vendria despues del punto, sin el punto ($Cabeza.xx)"
	echo "=============================================================================="
	echo "=============================================================================="
	read Form
	clear
	echo "=============================================================================="
	echo "=============================================================================="
	echo "Introduzca un valor entre 5 y 10 para determinar cuantos ficheros quiere crear"
	echo "=============================================================================="
	echo "=============================================================================="
	read NumeroFicheros
	
	if [ $NumeroFicheros -ge 5 ] && [ $NumeroFicheros -le 10 ];
	then
	
		while (( NumeroFicheros > 0 )) ; do
		touch $ZonaCreado$Cabeza$Contador.$Form
		echo "$ZonaCreado$Cabeza$Contador.$Form"
		NumeroFicheros=$(( $NumeroFicheros - 1 ))
		Contador=$(( $Contador - 1 ))
		done
		sleep $TiempoEspera
		clear
		echo "=============================================================================="
		echo "=============================================================================="
		echo "Sus ficheros fueron creados con exito!!!"
		echo "=============================================================================="
		echo "=============================================================================="
		sleep $TiempoEspera
		clear
		echo "=============================================================================="
		echo "=============================================================================="
		echo "Aqui estan sus permisos"
		echo "=============================================================================="
		echo "=============================================================================="
		sleep $TiempoEspera
		ls -lisa $ZonaCreado$Cabeza*.$Form
	else 
		echo "Numeros de ficheros incorrecto $NumeroFicheros"
	fi
	else
	echo "No se crearan varios archivos de forma automatica, su respuesta fue ($EntradaTeclado1)"
	
fi





