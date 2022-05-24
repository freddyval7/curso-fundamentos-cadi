Funcion datoCaracter = capturarDatoC(mensaje)
	Definir datoCaracter Como Caracter
	Mostrar mensaje ": " Sin Saltar
	Leer datoCaracter
FinFuncion

Funcion datoNum = capturarDatoN(mensaje)
	Definir datoNum Como real
	Mostrar mensaje ": " Sin Saltar
	Leer datoNum
FinFuncion

Funcion datoLog = capturarDatoL(mensaje)
	Definir datoLog Como logico
	Mostrar mensaje ": " Sin Saltar
	Leer datoLog
FinFuncion

Algoritmo clase3b
	Definir n, i Como Entero
	Definir notaMayor, notaMenor Como Real
	Definir nombreMayor, nombreMenor Como Caracter
	Definir auxMayor, auxMenor, auxNota Como Real
	Definir mensaje, auxNombre Como Caracter

	n = capturarDatoN("Ingresa el numero del estudiante")
	
	i=1
	auxMayor = 0
	auxMenor = 100
	
	Repetir
		mensaje = "Ingresa el nombre del estudiante"
		auxNombre = capturarDatoC(mensaje)
		auxNota = Aleatorio(0,100)
		Mostrar auxNota
		si auxNota > auxMayor
			auxMayor = auxNota
			nombreMayor = auxNombre
		FinSi
		si auxNota < auxMenor
			auxMenor = auxNota
			nombreMenor = auxNombre
		FinSi
		i=i+1
	Hasta Que i > n
	
	Mostrar ""
	Mostrar "El alumno con la mayor nota es: " nombreMayor
	Mostrar "Obtuvo la nota de: " auxMayor " pts."
	Mostrar ""
	Mostrar "El alumno con la menor nota es: " nombreMenor
	Mostrar "Obtuvo la nota de: " auxMenor " pts."
FinAlgoritmo
