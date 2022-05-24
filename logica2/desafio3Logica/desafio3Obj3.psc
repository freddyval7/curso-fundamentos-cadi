Algoritmo desafio3Obj3
	Definir a, b Como Entero
	Definir diferente, mayorQue Como Logico
	
	//Objetivo 3
	a = azar(21)
	b = azar(21)
	
	diferente = (a <> b)
	mayorQue = a > b
	
	si diferente
		Mostrar "El valor de A es diferente al de B"
		si mayorQue
			Mostrar "Además, el valor de A es mayor al de B"
		SiNo
			Mostrar "El valor de A no es mayor al de B"
		FinSi
	SiNo
		Mostrar "El valor de A es igual al de B"
	FinSi
	
	Mostrar ""
	Mostrar "El valor aleatorio asignado a A es : " a
	Mostrar "El valor aleatorio asignado a B es : " b
FinAlgoritmo
