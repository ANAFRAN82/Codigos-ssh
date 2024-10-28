echo "Dime un numero"
read x
a=1
b=1
while [ $a -le $x ]
do
r=`expr $a \* $b`
echo $b "*" $a "=" $r
b=$r
a=`expr $a \+ 1`
done
