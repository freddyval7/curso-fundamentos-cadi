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

Algoritmo clase3c
	Definir i Como Entero
	Definir auxNota Como Real
	Definir cantAlumnos, contNotaPerfec Como Entero
	Definir auxNombre, acumNombres, auxEspacio Como Caracter
	Definir acumTodasnotas, acumReprobados, acumAprobados Como Real
	
	//	Inicializar
	contNotaPerfec = 0
	acumTodasnotas = 0
	acumAprobados = 0
	acumNombres = ""
	acumReprobados = 0
	
	cantAlumnos = capturarDatoN("Ingrese la cantidad de alumnos")
	
	Para i = 1 hasta cantAlumnos
		auxNombre = capturarDatoC("Ingrese el nombre del alumno")
		auxNota = Aleatorio(0,100)
		Mostrar auxNota
		Si auxNota = 100
			contNotaPerfec = contNotaPerfec + 1
			auxEspacio = Concatenar(acumNombres,", ")
			acumNombres = Concatenar(auxEspacio,auxNombre)
		FinSi
		acumTodasnotas = acumTodasnotas + auxNota
		si auxNota < 50
			acumReprobados = acumReprobados + auxNota
		SiNo
			acumAprobados = acumAprobados + auxNota
		FinSi
	FinPara
	
	Mostrar "El número de alumnos con nota perfecto son: " contNotaPerfec
	Mostrar "Los nombres de los alumnos con nota perfecta son: " acumNombres
	Mostrar "El acumulado de todas las notas reprobadas son: " acumReprobados
	Mostrar "El acumulado de todas las notas aprobadas son: " acumAprobados
	
FinAlgoritmo
