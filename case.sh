while true
do
echo "1.-Tabla multiplicar"
echo "2.-Factorial"
echo "3.-Fibonaci"
echo "4.-Numero mayor"
echo "5.-Edad"
echo "6.-Salir"
echo "Elige una opcion"
read x
case $x in
1)
./while.sh
;;
2)
./while2.sh
;;
3)
./fibonaci.sh
;;
4)
./ifsim.sh
;;
5)
./ifanidado.sh
;;
6)
exit
;;
esac
done
