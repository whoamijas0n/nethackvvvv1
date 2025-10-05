clear

# empieza el bucle, hasta que el usuario seleccione la opcion numero 1 el menu se va a repetir

until [ "$opcion" = "5" ]
do

# se ejecuta el script para el logo y informacion de el programa

bash log.sh


# menu de opciones para seleccionar la accion que se desea llevar a cabo

echo ""
echo -e "\033[33m[-] Menu de opciones:\033[0m"
echo ""
echo "[0] Instalar dependencias"
echo "[1] Captura de handshake"
echo "[2] Ataque de diccionario"
echo "[3] Ataque de fuerza bruta utilizando Hashcat"
echo "[4] Ataque Evil Twin"
echo "[5] Salir"


echo ""

read -p $'\e[31m[-] Elige una opcion: \e[0m ' opcion

# empieza el menu de casos segun la opcion que se haya tomado

case $opcion in
	

	"0")
		clear
		bash requeriments.sh
		;;		

	"1")
		clear
		bash mnuch.sh
		;;

	"2")
		clear
		bash dattk.sh
		;;


	"5")
		echo ""
		echo -e "\033[32m[!] Saliendo de el programa ¡Gracias por usar Nethack!\033[0m"
		echo ""
	;;
	
	*)
		clear
		echo -e "\033[31m[!] Opcion invalida, repita denuevo.\033[0m"
	;;

# Termina el menu de casos
esac	

# termina el bucle de el menu principal
done

