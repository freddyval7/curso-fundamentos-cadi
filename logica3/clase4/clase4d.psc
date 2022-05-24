Funcion datoNum = capturarDatoNum(mensaje)
	Definir datoNum Como real
	Mostrar mensaje ": " Sin Saltar
	Leer datoNum
FinFuncion

Funcion dato = pedirDatoNumRango(mensaje, min, max)
	Definir dato Como Real
	mostrar mensaje
	Mostrar "Ingrese el dato requerido en el rango de [" min " a " max "]"
	Repetir
		Leer dato
		si(!(dato >= min y dato <= max))
			Mostrar "El dato debe estar en el rango de [" min " a " max "]"
		FinSi
	Hasta Que (dato >= min y dato <= max)
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

Algoritmo clase4d
	definir alumnos, i,j,k,m,n,l,contMenorNotas, contMayorNotas Como Entero
	Definir auxNota,notas,acumNotas,promedioSeccion,notaMenor,notaMayor Como Real
	
	alumnos = capturarDatoNum("Ingrese el numero de estudiantes")
	Dimension notas[alumnos]
	
	//Carga del arreglo
	para i = 1 Hasta alumnos
		Mostrar "Ingrese la nota del " i "° alumno"
		auxNota = pedirDatoNumRango("",0,100)
		notas(i) = auxNota
	FinPara
	
	//Calcular el promedio de la seccion
	acumNotas = 0
	Para j=1 Hasta alumnos
		acumNotas = acumNotas+notas(j)
	FinPara
	promedioSeccion = calcularPromedio(acumNotas,alumnos)
	
	//Determinar la menor nota
	notaMenor = notas(1)
	Para k = 2 Hasta alumnos
		si notas(2) < notaMenor
			notaMenor = notas(k)
		FinSi
	FinPara
	
	//Determinar la mayor nota
	notaMayor = notas(1)
	Para n = 2 Hasta alumnos
		si notas(2) > notaMayor
			notaMayor = notas(n)
		FinSi
	FinPara
	
	//Cuento cuantas notas mayores hay
	Para l=1 Hasta alumnos
		si notas(l) = notaMayor
			Mostrar "Hay una mayor nota en la posicion " l
			contMayorNotas = contMayorNotas + 1
		FinSi
	FinPara
	
	//Cuento cuantas notas menores hay
	Para m=1 Hasta alumnos
		si notas(m) = notaMenor
			Mostrar "Hay una menor nota en la posicion " m
			contMenorNotas = contMenorNotas + 1
		FinSi
	FinPara
	Mostrar "En el arreglo de notas hay " contMenorNotas " notas menores"
	Mostrar "La menor nota es: " notaMenor
	Mostrar "En el arreglo de notas hay " contMayorNotas " notas mayores"
	Mostrar "La mayor nota es: " notaMayor
	
FinAlgoritmo
