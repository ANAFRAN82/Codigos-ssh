while true
do
echo "1.Denegar Ping remoto por direccion ip"
echo "2.Permiter Ping remoto por direccion ip"
echo "3.Denegar Puerto 22 por direccion ip"
echo "4.Permitir Puerto 22 por direccion ip"
echo "5.Denegar Puerto 22 por direccion MAC"
echo "6.Permitir Puerto 22 por direccion MAC"
echo "7.Denegar puerto 22 por un rango de ips"
echo "8.Permitir puerto 22 por un rango de ips"
echo "9.Checar el estado de las cadenas del Kernel"
echo "10.Salir del script"
read x
case $x in
1)
echo "Dime la direccion ip"
read a
/sbin/iptables --append INPUT --protocol icmp --source $a --jump DROP

;;
2)
echo "Dime la direccion ip"
read a
/sbin/iptables --delete INPUT --protocol icmp --source $a --jump DROP
;;
3)
echo "Dime la direccion ip"
read x
/sbin/iptables --append INPUT --protocol tcp --source $x --dport 22 --jump DROP
;;
4)
echo "Dime la direccion ip"
read x
/sbin/iptables --delete INPUT --protocol tcp --source $x --dport 22 --jump DROP
;;

5)
echo "Dime la direcion MAC"
read z
/sbin/iptables -A INPUT -p tcp --dport 22 -m mac --mac-source $z -j DROP
;;
6)
echo "Dime la direcion MAC"
read s
/sbin/iptables -D INPUT -p tcp --dport 22 -m mac --mac-source $s -j DROP
;;
7)
./script.sh
;;
8)
./scrip3.sh
;;
9)
/sbin/iptables -nL
;;
10)
exit
;;
esac
done
