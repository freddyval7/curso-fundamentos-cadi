Algoritmo desafio3
	Definir edad Como Real
	Definir sexo Como Caracter
	Definir pension Como Logico
	
	Mostrar "Bienvenido al programa!"
	Mostrar "Presione una tecla para continuar..."
	Esperar Tecla
	Limpiar Pantalla
	
	//Objetivo 1
	Mostrar "Por favor, ingrese su edad: " Sin Saltar
	Leer edad
	Mostrar "Por favor, ingrese su sexo ([M]asculino, [F]emenino): " Sin Saltar
	Leer sexo
	
	sexo = Mayusculas(sexo)
	pension = (sexo = "M" y edad >= 60) o (sexo = "F" y edad >= 55)
	
	si pension
		Mostrar "Usted puede optar por el servicio de pensiones"
	SiNo
		Mostrar "No puede optar por el servicio de pensiones"
	FinSi
FinAlgoritmo
