echo "Dame un numero"
read x
a=1
b=1
c=0
d=0

while [ $a -le $x ]
do
echo $a "|" $b
c=$d
d=$b
b=`expr $c \+ $d`
a=`expr $a \+ 1`
done
