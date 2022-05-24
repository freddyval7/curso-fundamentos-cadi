Funcion dato = pedirDatoCharDual(mensaje,opc1,opc2)
	Definir dato Como Caracter
	mostrar mensaje
	opc1 = Mayusculas(opc1)
	opc2 = Mayusculas(opc2)
	mostrar "Ingrese el dato requerido: [" opc1 " o " opc2 "]"
	Repetir
		Leer dato
		dato = Mayusculas(dato)
		si (!(dato = opc1 o dato = opc2))
			mostrar "Ingrese el dato requerido: [" opc1 " o " opc2 "]"
		FinSi
	Hasta Que (dato = opc1 o dato = opc2)
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

Funcion porcentaje = calcularPorcentajeProporcional(contEsp,contGen)
	Definir porcentaje Como Real
	si contGen <> 0
		porcentaje = (contEsp / contGen) * 100
	SiNo
		Mostrar "No se puede calcular con un contador igual a 0"
		porcentaje = 0
	FinSi
FinFuncion

Algoritmo clase4b
	Definir cantAlum, i , j  como entero
	Definir promNotasAlum,promNotasSecc,porcAprob, nota Como Real
	Definir acumNotasEst, acumNotasSecc,contAprob Como Real
	Definir contFemAprob Como Entero
	Definir genero, nombre Como Caracter
	
	cantAlum = capturarDatoNum("Ingrese el número de alumnos")
	acumNotasSecc = 0
	contAprob=0
	contFemAprob=0
	
	Para i = 1 Hasta cantAlum
		acumNotasEst=0
		nombre = capturarDatoChar("Ingrese el nombre del alumno: ")
		genero = pedirDatoCharDual("Ingrese el genero del alumno (M/F): ","M","F")
		Para j=1 Hasta 5
			nota = pedirDatoNumRango("Ingrese la nota",0,100)
			acumNotasEst = acumNotasEst + nota
			acumNotasSecc = acumNotasSecc+nota
		FinPara
		promNotasAlum = calcularPromedio(acumNotasEst,5)
		si promNotasAlum > 80
			contAprob = contAprob+1
		FinSi
		si promNotasAlum > 80 y genero = "F"
			contFemAprob = contFemAprob + 1
		FinSi
		Mostrar "El promedio del alumno " nombre " es: " promNotasAlum " pts"
	FinPara
	promNotasSecc = calcularPromedio(acumNotasSecc,(cantAlum*5))
	porcAprob = calcularPorcentajeProporcional(contAprob,cantAlum)
	
	Mostrar "El promedio de la sección es: " promNotasSecc " pts."
	Mostrar "El porcentaje de aprobados fue de: " porcAprob "%"
	Mostrar "La cantidad de alumnas aprobadas fue de: " contAprob " alumnas"
FinAlgoritmo
