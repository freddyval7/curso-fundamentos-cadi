Algoritmo desafio3Obj2
	Definir edad, cotizaciones Como Real
	Definir sexo Como Caracter
	Definir pension Como Logico
	//Objetivo 2
	Mostrar "Por favor, ingrese su edad: " Sin Saltar
	Leer edad
	Mostrar "Por favor, ingrese su sexo ([M]asculino, [F]emenino): " Sin Saltar
	Leer sexo
	Mostrar "Por favor, ingrese el número de cotizaciones: " Sin Saltar
	Leer cotizaciones
	
	sexo = Mayusculas(sexo)
	pension = (sexo = "M" y edad >= 60) o (sexo = "F" y edad >= 55) y (cotizaciones >= 750)
	
	si pension
		Mostrar "Usted puede optar por el servicio de pensiones"
	SiNo
		Mostrar "No puede optar por el servicio de pensiones"
	FinSi
FinAlgoritmo
