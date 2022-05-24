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

Funcion valorValido = validarEntero(mensaje)
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

Algoritmo clase2a
	Definir longNum  Como Entero
	Definir dato Como Real
	Definir numText Como Caracter
	
	dato = validarEntero("Ingrese un numero real: ")
	Mostrar "El numero real es: " dato
FinAlgoritmo
