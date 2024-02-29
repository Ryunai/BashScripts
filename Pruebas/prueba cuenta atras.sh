
print_countdown () {
	echo "Quedan $1 Segundos"

}


SEGUNDOS=10


echo "Cuenta atras comenzada"

while (( SEGUNDOS > 0 )) ; do
	sleep 1
	SEGUNDOS=$(( $SEGUNDOS - 1 ))
	print_countdown "${SEGUNDOS}"
done

echo "Se acabo el tiempo"
