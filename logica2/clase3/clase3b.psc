Algoritmo clase3b
	Definir nota, monto, num Como Real
	Definir genero Como Caracter
	
	//a
	Mostrar "Ingrese la nota: " Sin Saltar
	Leer nota
	si nota >= 0 y nota <= 100 Entonces
		Mostrar nota
	FinSi
	
	//b
	Mostrar "Ingrese el monto: " Sin Saltar
	Leer monto
	si monto > 0 y monto < 5000
		Mostrar monto
	FinSi
	
	//c
	Mostrar "Ingrese el numero: " Sin Saltar
	Leer num
	si num = 10 o num > 5
		Mostrar num
	FinSi
	
	//d
	Mostrar "Ingrese el genero (M/F): " Sin Saltar
	Leer genero
	genero = Mayusculas(genero)
	si genero = "F" o genero = "M" Entonces
		Mostrar genero
	FinSi
	
FinAlgoritmo
