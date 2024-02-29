clear





TiempoEspera="3"
EntradaTeclado=""
CuentAtras=10

echo "==========================================================================="
echo "Script de Actualizacion en curso.."
echo "Desea proceder con la actualizacion? (Si, No)"
echo "==========================================================================="
read EntradaTeclado
echo "Estamos valorando tu respuesta.. ( $EntradaTeclado )"

if [ $EntradaTeclado = "Si" ] || [ $EntradaTeclado = "Si" ] || [ $EntradaTeclado =  "s" ] || [ $EntradaTeclado = "S" ] || [ $EntradaTeclado = "sI" ] || [ $EntradaTeclado ="s" ]; then
	echo "Ejecutando actualizacion"
	sudo apt update
	sudo apt upgrade -y
	sudo apt autoremove -y
	echo "==========================================================================="
	echo "Actualización terminada"
	echo "La cuenta atras de reinicio empezara en $TiempoEspera segundos"
	echo "==========================================================================="


	sleep $TiempoEspera


print_countdown () {
	echo "Quedan $1 Segundos"

}

echo "Cuenta atras comenzada"

while (( CuentAtras > 0 )) ; do
	sleep 1
	CuentAtras=$(( $CuentAtras - 1 ))
	print_countdown "${CuentAtras}"
done

echo "Se acabo el tiempo"


	reboot
else
	echo "No se hace actualizacion"
fi



sleep $TiempoEspera

#sudo apt update
#sudo apt upgrade -y
#sudo apt autoremove -y



#echo "==========================================================================="
#echo "Actualización terminada"
#echo "La cuenta atras de reinicio empezara en 3 segundos"
#echo "==========================================================================="


#sleep $TiempoEspera



#echo "10"
#sleep 1
#echo "9"
#sleep 1
#echo "8"
#sleep 1
#echo "7"
#sleep 1
#echo "6"
#sleep 1
#echo "5"
#sleep 1
#echo "4"
#sleep 1
#echo "3"
#sleep 1
#echo "2"
#sleep 1
#echo "1"
#sleep 1
#echo "0"
#reboot
