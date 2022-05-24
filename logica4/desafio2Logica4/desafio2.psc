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

SubAlgoritmo cargarArregloParal(nom Por Referencia, not Por Referencia)
	Definir datoNum Como Real
	Definir datoCarac Como Caracter
	Definir i Como Entero
	
	Para i=1 Hasta 12
		Mostrar "Ingrese los datos del " i "° estudiante"
		datoCarac = validarLetras("Ingrese el nombre: ")
		nom(i) = datoCarac
//		Mostrar "Nombre: " Sin Saltar
//		Leer nom(i)
		datoNum = validarReal("Ingrese la nota (valor entero): ")
		not(i) = datoNum
		Mostrar ""
	FinPara
FinSubAlgoritmo

SubAlgoritmo ordenarArreglo(nom Por Referencia,not Por Referencia)
	Definir i, j Como Entero
	Definir auxNum Como Real
	Definir auxCarac Como Caracter
	
	Para i=1 Hasta 12
		Para j=1 Hasta 11
			si not(j) < not(j+1)
				auxNum = not(j)
				not(j) = not(j+1)
				not(j+1) = auxNum
				
				auxCarac = nom(j)
				nom(j) = nom(j+1)
				nom(j+1) = auxCarac
			FinSi
		FinPara
	FinPara
	
	Mostrar ""
	Mostrar "Arreglo ordenado de manera descendente: "
	Para i=1 Hasta 12
		Mostrar "- " nom(i) ": " not(i)
	FinPara
FinSubAlgoritmo

SubAlgoritmo mostrarMenorYMayor(nom,not)
	Definir nomMayor,nomMenor Como Caracter
	Definir notMayor, notMenor Como Real
	
	notMayor=not[1]
	nomMayor=nom[1]
	Para k=2 Hasta 12
		si not(k) > notMayor
			notMayor = not(k)
			nomMayor = nom(k)
		FinSi
	FinPara
	
	notMenor=not[1]
	nomMenor=nom[1]
	Para m=2 Hasta 12
		si not(m) < notMenor
			notMenor = not(m)
			nomMenor = nom(m)
		FinSi
	FinPara
	
	Mostrar ""
	Mostrar "El estudiante " nomMayor " obtuvo la mayor nota, con: " notMayor " Pts."
	Mostrar "El estudiante " nomMenor " obtuvo la menor nota, con: " notMenor " Pts."
	Esperar 2 Segundos
FinSubAlgoritmo

SubAlgoritmo calcularPromedio(arreglo, tamArreglo, promedio Por Referencia)
	Definir vacio Como Logico
	Definir i Como Entero
	Definir acum Como Real
	vacio = Verdadero
	Repetir
		Para  i=1 hasta tamArreglo
			si arreglo(i) = 0
				vacio = Verdadero
				Mostrar "El arreglo está vacío"
			SiNo
				vacio = Falso
			FinSi
		FinPara
	Hasta Que vacio = Falso
	
	acum = 0
		Para i=1 Hasta tamArreglo
			acum = acum+arreglo(i)
		FinPara
	promedio = acum / tamArreglo
FinSubAlgoritmo

Algoritmo desafio2
	Definir nombres Como Caracter
	Definir notas Como Real 
	Definir i Como Entero
	Dimension nombres[12]
	Dimension notas[12]
	
	cargarArregloParal(nombres,notas)
	ordenarArreglo(nombres,notas)
	mostrarMenorYMayor(nombres,notas)
	calcularPromedio(notas,12,promedio)
	
	Mostrar ""
	Mostrar "Alumnos que superaron el promedio: "
	
	Para j=1 Hasta 12
		si notas(j) > promedio
			Mostrar "- " nombres(j) " con " notas(j) " pts."
		FinSi
	FinPara
	
FinAlgoritmo
