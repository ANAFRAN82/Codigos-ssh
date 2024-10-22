echo "Nombre del Trabajador: "
read Trab
echo "Direccion: "
read Dir
echo "Puesto: "
read Pt
echo "Sueldo Semanal: "
read Ssem
echo "Dias Trabajados: "
read Dt
echo "Horas extras Trabajadas: "
read He
Dias=1
SueldoDia=` expr $Ssem \/ 6 `
SueldoNeto=` expr $Ssem \* $Dt \/ 6 `
Extras=` expr $SueldoDia \/ 8 `

echo ""
# echo "Sueldo por dia: "$Sueldo_Por_Dia
# echo "Sueldo neto:"$Sueldo_Neto
# echo "Extras: "$Extras
# echo "Nombre:"$Trabajador
echo "Horas extras trabajadas: "$He

if [ $He -le 8 ]
then
Extra=` expr $He \* $Extras \* 2 `
echo "Sueldo Semanal:"$SueldoNeto
echo "Pago de horas extras totales:"$Extra
Total=` expr $SueldoNeto \+ $Extra `
echo "Pago sin deducciones: $"$Total

    else if [ $He -gt 8 ]
then
A=` expr 8 \* $Extras \* 2 `
B=` expr $He \- 8 `
C=` expr $B \* $Extras \* 3 `
Suma=` expr $A \+ $C `
echo "Sueldo semanal: $"$SueldoNeto
echo "Horas al doble: $"$A
echo "Horas al triple: $"$C
Total=` expr $SueldoNeto \+ $Suma `
echo "Pago de horas extras totales: $"$Suma
echo "Pago sin deducciones: $"$Total
fi
fi

echo ""
#LISR
if [ $Total -le 3000 ]
then
R=` expr $Total \* 4 `
r=` expr $R \/ 100 `
echo "Descuento LISR: $"$r

else if [ $Total -ge 3001 ]
then
A=` expr $Total \* 7 `
a=` expr $A \/ 100 `
echo "Descuento LISR: $"$a
fi
fi

#IMSS
if [ $Total -le 3500 ]
then
K=` expr $Total \* 3 `
k=` expr $K \/ 100`
echo "Descuento IMSS: $"$k
else if [ $Total -ge 3501 ]
then
P=` expr $Total \* 5 `
p=` expr $P \/ 100 `
echo "Descuento IMSS: $"$p
fi
fi

#Sindical
M=` expr $Total \* 2 `
m=` expr $M \/ 100 `
echo "Descuento cuota sindical: $"$m
F=` expr $r + $a + $k + $p + $m `

#deducciones
echo "Descuento total de Deducciones: $"$F


B=` expr $Total - $F `
echo "Trabajador:"$Trab
echo "Direccion:"$Dir
echo "Puesto:"$Pt
echo "Total neto a pagar:$"$B


