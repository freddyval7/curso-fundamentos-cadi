Algoritmo clase4c
	Definir val, continuar Como Logico
	Definir num Como Real
	Definir letra Como Caracter
	Dimension Mes[3]
	Mes[1] = "Enero"
	Mes[2] = "Febrero"
	Mes[3] = "Marzo"
	val = Falso
	
	Repetir 
		Mostrar "Ingrese el n�mero de mes (Enero:1, Febrero:2, Marzo:3): " Sin Saltar
		Leer num	
		si num >= 1 y num <= 3
			Mostrar "Ingres� el n�mero " num " correspondiente a " Mes[num] 
			val = Verdadero
		SiNo
			Mostrar "Ingrese un n�mero correcto"
			Mostrar ""
		FinSi
	Hasta Que val
	
FinAlgoritmo
