Funcion datoCaracter = capturarDatoChar(mensaje)
	Definir datoCaracter Como Caracter
	Mostrar mensaje ": " Sin Saltar
	Leer datoCaracter
FinFuncion

Funcion datoNum = capturarDatoNum(mensaje)
	Definir datoNum Como real
	Mostrar mensaje ": " Sin Saltar
	Leer datoNum
FinFuncion

Funcion datoLog = capturarDatoLog(mensaje)
	Definir datoLog Como logico
	Mostrar mensaje ": " Sin Saltar
	Leer datoLog
FinFuncion

Funcion promedio = calcularPromedio(acum,cont)
	Definir promedio Como Real
	si cont <> 0
		promedio = acum / cont
	SiNo
		Mostrar "No se puede calcular con un contador igual a 0"
		promedio = 0
	FinSi
	
FinFuncion

Funcion porcentaje = calcularPorcentajeProporcional(contEsp,contGen)
	Definir porcentaje Como Real
	si contGen <> 0
		porcentaje = (contEsp / contGen) * 100
	SiNo
		Mostrar "No se puede calcular con un contador igual a 0"
		porcentaje = 0
	FinSi
FinFuncion

Algoritmo clase3d
	Definir i Como Entero
	Definir auxNota Como Real
	Definir cantAlumnos, contNotaPerfec, cantReprobados Como Entero
	Definir auxNombre, acumNombres, auxEspacio Como Caracter
	Definir acumTodasnotas, acumReprobados, acumAprobados Como Real
	Definir promedioNotas, porcentAprob, porcentReprob Como Real
	Definir cantAprobados Como Entero
	
	//	Inicializar
	contNotaPerfec = 0
	acumTodasnotas = 0
	acumAprobados = 0
	acumNombres = ""
	acumReprobados = 0
	cantAprobados = 0
	cantReprobados = 0
	
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
			cantReprobados = cantReprobados + 1
		SiNo
			acumAprobados = acumAprobados + auxNota
			cantAprobados = cantAprobados + 1
		FinSi
	FinPara
	
	promedioNotas = calcularPromedio(acumTodasnotas,cantAlumnos)
	porcentAprob = calcularPorcentajeProporcional(cantAprobados,cantAlumnos)
	porcentReprob = calcularPorcentajeProporcional(cantReprobados,cantAlumnos)
	
	Mostrar "El número de alumnos con nota perfecto son: " contNotaPerfec
	Mostrar "Los nombres de los alumnos con nota perfecta son: " acumNombres
	Mostrar "El acumulado de todas las notas reprobadas son: " acumReprobados
	Mostrar "El acumulado de todas las notas aprobadas son: " acumAprobados
	Mostrar ""
	Mostrar "El promedio de las notas de los alumnos es: " promedioNotas
	Mostrar "El porcentaje de aprobados es del: " porcentAprob
	Mostrar "El porcentaje de reprobados es del: " porcentReprob
FinAlgoritmo
