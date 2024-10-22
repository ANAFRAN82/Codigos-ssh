echo "Dime tu edad"
read x
if [ $x -le 2 ]
then
echo "eres un bebe"
else
echo " "
fi
if [ $x -gt 2 ] && [ $x -le 17 ]
then 
echo "eres un nino (a)"
else if [ $x -gt 17 ] && [ $x -le 25 ]
then
echo "eres un joven"
else if [ $x -gt 25 ] && [ $x -le 55 ]
then
echo "eres suegro (gra)"
else if [ $x -gt 55 ]
then
echo "eres un abuelito (ta)"
fi
fi
fi
fi
