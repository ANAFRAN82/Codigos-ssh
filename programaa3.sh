echo "Ingrese un número:"
read a

for ((b=1;b<=a;b++))
do
z=`expr $b \* $b`

for ((x=1;x<b;x++))
do
xx=`expr $x \* $x`

for ((y=1;y<xx;y++))
do
yy=`expr $y \* $y`
result=`expr $xx + $yy`

if [ $result -eq $z ]
then
echo "$z = $xx + $yy"
fi
done
done
done
