echo "Dime la clase de red"
read x
echo "Dime la ip inicial para dropear"
read s
echo "Dime la ip final a dropear"
read z
while [ $s -le $z ]
do
/sbin/iptables --delete INPUT --protocol tcp --source $x$s --dport 22 --jump DROP
s=`expr $s \+ 1`
done
