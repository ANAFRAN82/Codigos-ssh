echo "Ingresa un numero"
read a
b=1
while [ $b -le $a ]
do
b=`expr $b + 1`
z=`expr $b \* $b`

y=1
while [ $y -lt $b ]
do
y=`expr $y + 1`
yy=`expr $y \* $y`

x=1
while [ $x -lt $yy ]
do
x=`expr $x + 1`
xx=`expr $x \* $x`

result=`expr $xx + $yy`
if [ $result -eq $z ]
then
echo "$z = $xx + $yy"
fi
done
done
done
