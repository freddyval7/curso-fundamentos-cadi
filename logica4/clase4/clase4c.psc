Funcion factorial=calcFactorial(n)
	Definir factorial Como Real
	Segun n
		0:factorial=1
		de otro modo:
			factorial=n*calcFactorial(n-1)
	FinSegun
FinFuncion

Funcion potencia = calcPotenciaALaN(n)
	Definir potencia Como Real
	Si n=1
		potencia = 2
	SiNo
		potencia = 2 * calcPotenciaALaN(n-1)
	FinSi
FinFuncion

Algoritmo clase4c
	Definir mensaje Como Caracter
	Definir n Como Entero
	
	mostrar "Ingrese el número para calcularle el factorial: "
	Leer n
	Mostrar "El factorial de " n " es " calcFactorial(n)
	Mostrar ""
	mostrar "Ingrese el exponente para calcularle la potencia a 2: "
	Leer n
	Mostrar "La potencia de 2 a la " n " es " calcPotenciaALaN(n)
	
FinAlgoritmo
