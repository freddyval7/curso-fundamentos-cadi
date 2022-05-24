SubAlgoritmo pedirInformacion(mensaje, dato Por Referencia)
	Mostrar mensaje Sin Saltar
	Leer dato
FinSubAlgoritmo

SubAlgoritmo mostrarInfo(mensaje, variab)
	Mostrar mensaje " " variab
FinSubAlgoritmo

SubProceso calcularPorcentaje(val, porcentaje, result Por Referencia)
	result = val * porcentaje
FinSubProceso

SubAlgoritmo multiplicarDosValores(valor1,valor2,result Por Referencia)
	result = valor1*valor2
FinSubAlgoritmo

SubAlgoritmo aumentarPorcentaje(valorIni,porcentaje,valorAument Por Referencia)
	valorAument = valorIni + (valorIni * porcentaje / 100)
FinSubAlgoritmo

SubAlgoritmo descontarPorcentaje(valorIni,porcentaje,valorDesc Por Referencia)
	valorDesc = valorIni - (valorIni * porcentaje / 100)
FinSubAlgoritmo

SubAlgoritmo promedio(val1, val2, prom Por Referencia)
	prom = (val1 + val2)/2
FinSubAlgoritmo

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

Funcion dato = pedirDatoCharDual(mensaje,opc1,opc2)
	Definir dato Como Caracter
	Definir  validador Como Logico
	
	opc1 = Mayusculas(opc1)
	opc2 = Mayusculas(opc2)
	mostrar "Ingrese el dato requerido: [" opc1 " o " opc2 "]"
	Repetir
		mostrar mensaje ": " Sin Saltar
		Leer dato
		validador = validarLet(dato)
		dato = Mayusculas(dato)
		si validador
			dato = Mayusculas(dato)
		FinSi
		si (!(dato = opc1 o dato = opc2))
			mostrar "Ingrese el dato requerido: [" opc1 " o " opc2 "]"
		FinSi
	Hasta Que ((dato = opc1 o dato = opc2) y validador)
FinFuncion
Funcion validador = validarNumsMinMax(min, max)
	Definir validador Como Logico
	si min < max
		validador = Verdadero
	SiNo
		validador = Falso
	FinSi
FinFuncion

Funcion dato = validarNumPositivo(mensaje)
	Definir dato Como Real
	Repetir
		Mostrar mensaje
		Leer dato
		si dato < 0 Entonces
			Mostrar "El dato requerido debe ser positivo"
		FinSi
		si dato = 0
			Mostrar "El dato requerido no debe ser cero"
		FinSi
	Hasta Que dato > 0
FinFuncion

Funcion encontrado = buscarEnArregloCaracterQueNoExista(datoABuscar, tamanoArreglo, arreglo)
	Definir k Como Entero
	Definir encontrado Como Logico
	
	encontrado = Falso
	k=1
	Repetir
		Si datoABuscar = arreglo(k)
			encontrado = Verdadero
		FinSi
		k = k + 1
	Hasta Que encontrado = Verdadero O k > tamanoArreglo
	Si encontrado = Verdadero
		Mostrar "El dato a buscar ya existe en el arreglo!"
	FinSi
FinFuncion

SubAlgoritmo mostrarDatosArreglo(tamanoArreglo,arreglo)
	Definir i Como Entero
	Para i=1 Hasta tamanoArreglo
		si !(arreglo(i) = "")
			Mostrar i "° - " arreglo(i)
		FinSi
	FinPara
FinSubAlgoritmo

SubAlgoritmo contarPuntos(carac_i, contador Por Referencia)
	si carac_i = "."
		contador = contador + 1
	FinSi
FinSubAlgoritmo

Funcion esNum = validarCaracterNum(caract)
	Definir caracteresNumericos, caracNum Como Caracter
	Definir longCarac, longitudDato, i, j Como Entero
	
	caracteresNumericos = "0123456789."
	longCarac = Longitud(caracteresNumericos)
	longitudDato = longitud(caract)
	i = 1
	j=1
	Repetir
		Repetir
			caracNum = Subcadena(caracteresNumericos,i,i)
			esNum = (Subcadena(caract,j,j) = caracNum)
			i = i + 1
		Hasta Que (esNum o i > longCarac)
		j = j+1
	Hasta Que (j >= longitudDato o esNum = Falso)
FinFuncion

Funcion valorValido = validarReal(mensaje)
	Definir cadCaracteres,carac_i Como Caracter
	Definir caracterEsNum Como Logico
	Definir i, longCad, contPuntos Como Entero
	
	Repetir
		Mostrar mensaje Sin Saltar
		Leer cadCaracteres
		longCad = longitud(cadCaracteres)
		i=1
		contPuntos=0
		Repetir
			carac_i = Subcadena(cadCaracteres,i,i)
			caracterEsNum = validarCaracterNum(carac_i)
			contarPuntos(carac_i,contPuntos)
			si caracterEsNum
				i = i + 1
			FinSi
		Mientras Que (i<=longCad y caracterEsNum)
		si ~caracterEsNum o contPuntos > 1
			Mostrar "Ingrese un valor válido"
			Mostrar ""
		FinSi
	Hasta Que (caracterEsNum y contPuntos < 2)
	valorValido = ConvertirANumero(cadCaracteres)
FinFuncion

Funcion esLet = validarLet(carac)
	Definir caracteresLetra, caracLet Como Caracter
	Definir longCarac, i Como Entero
	
	caracteresLetra = "abcdefghijklmnopqrstuvwxyz"
	longCarac = Longitud(caracteresLetra)
	cacacteresLetra = Mayusculas(caracteresLetra)
	i = 1
	Repetir
		caracLet = Subcadena(caracteresLetra,i,i)
		esLet = (carac = caracLet)
		i = i + 1
	Hasta Que (esLet o i > longCarac)
FinFuncion

Funcion valorValid = validarLetras(mensaje)
	Definir cadCaracteres,carac_i Como Caracter
	Definir caracterEsLet Como Logico
	Definir i, longCad Como Entero
	
	Repetir
		Mostrar mensaje Sin Saltar
		Leer cadCaracteres
		longCad = longitud(cadCaracteres)
		i=1
		Repetir
			carac_i = Subcadena(cadCaracteres,i,i)
			caracterEsLet = validarLet(carac_i)
			si caracterEsLet
				i = i + 1
			FinSi
		Mientras Que (i<=longCad y caracterEsLet)
		si ~caracterEsLet
			Mostrar "Ingrese un valor válido"
			Mostrar ""
		FinSi
	Hasta Que (caracterEsLet)
	valorValid = cadCaracteres
FinFuncion

SubAlgoritmo cargarArregloParal(tamanoArreg, a Por Referencia, b Por Referencia, c Por Referencia)
	Definir datoNum1, datoNum2 Como Real
	Definir datoCarac Como Caracter
	Definir i Como Entero
	
	Para i=1 Hasta tamanoArreg
		Mostrar "Ingrese los datos del " i "° estudiante"
		datoCarac = validarLetras("Ingrese el nombre: ")
		a(i) = datoCarac
		datoNum1 = validarReal("Ingrese la nota 1 (valor entero): ")
		b(i) = datoNum1
		datoNum2 = validarReal("Ingrese la nota 2 (valor entero): ")
		c(i) = datoNum2
		Mostrar ""
	FinPara
FinSubAlgoritmo

Algoritmo modulosReusables
	
FinAlgoritmo
