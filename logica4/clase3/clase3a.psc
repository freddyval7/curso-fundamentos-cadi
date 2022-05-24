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

SubAlgoritmo contarPuntos(carac_i, contador Por Referencia)
	si carac_i = "."
		contador = contador + 1
	FinSi
FinSubAlgoritmo

Funcion esNum = validarCaracterNum(caract)
	Definir caracteresNumericos, caracNum Como Caracter
	Definir longCarac, i Como Entero
	
	caracteresNumericos = "0123456789."
	longCarac = Longitud(caracteresNumericos)
	i = 1
	Repetir
		caracNum = Subcadena(caracteresNumericos,i,i)
		esNum = (caract = caracNum)
		i = i + 1
	Hasta Que (esNum o i > longCarac)
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
	valorValid = Mayusculas(valorValid)
FinFuncion

SubAlgoritmo cargarArregloParal(tamanoArreg, a Por Referencia, b Por Referencia, c Por Referencia)
	Definir datoNum1, datoNum2 Como Real
	Definir datoCarac Como Caracter
	Definir i Como Entero
	
	Para i=1 Hasta tamanoArreg
		Mostrar "Ingrese los datos del " i "° estudiante"
		datoCarac = validarLetras("Ingrese el nombre: ")
		a(i) = datoCarac
		b(i) = pedirDatoNumRango("Ingrese la nota 1: ",0,20)
		c(i) = pedirDatoNumRango("Ingrese la nota 2: ",0,20)
		Mostrar ""
	FinPara
FinSubAlgoritmo

SubAlgoritmo acumuladorNotas(a,b, acumulador Por Referencia)
	Definir i Como Entero
	Para i = 1 Hasta 5
		acumulador[i] = a[i] + b[i]
	FinPara
FinSubAlgoritmo

SubAlgoritmo mostrarInformacion(nom,acum)
	Definir i Como Entero
	Para i=1 Hasta 5
		Mostrar "El alumno " nom(i) " obtuvo " acum(i) " pts."
	FinPara
FinSubAlgoritmo

Algoritmo clase3a
	//Definición de variables
	Definir i Como Entero
	Dimension nombres[5]
	Dimension nota1[5]
	Dimension nota2[5]
	Dimension notAcumulada[5]
	
	//Carga de arreglos
	cargarArregloParal(5,nombres,nota1,nota2)
	acumuladorNotas(nota1,nota2,notAcumulada)
	mostrarInformacion(nombres,notAcumulada)
	
FinAlgoritmo
