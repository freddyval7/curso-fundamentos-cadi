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
FinFuncion

SubAlgoritmo cargarNotas(filas,columnas,matriz Por Referencia)
	Definir i,j Como Entero
	
	//Se cargan las notas con valores aleatorios entre 0 y 100
	Para i=1 Hasta filas
		Para j=1 Hasta columnas
			matriz[i,j] = Aleatorio(0,100)
		FinPara
	FinPara
FinSubAlgoritmo

Funcion promedioNotas = calcularPromedioNotas(filas,columnas,matriz)
	Definir i, j Como Entero
	Definir acum Como Real
	
	//Se calcula el promedio de todos los estudiantes
	Para i=1 hasta filas
		acum = 0
		Para j=1 hasta columnas
			acum = acum + matriz[i,j]
			si columnas > 0
				promedioNotas = acum / columnas
			FinSi
		FinPara
	FinPara
FinFuncion

Funcion val = saberMayorOMenor(queDeseasSaber,filas,columnas,matriz,limiteSuperior,limiteInferior) 
	Definir i,j Como Entero
	Definir men,may Como real
	
	//Inicializo a mayor con el menor valor posible
	may = limiteInferior
	//Inicializo a menor con el mayor valor posible
	men = limiteSuperior
	//Se determina el mayor y menor
	Para i = 1 Hasta filas
		para j=1 Hasta columnas
			si matriz(i,j) > may
				may = matriz(i,j)
			FinSi
			si matriz(i,j) < men
				men = matriz(i,j)
			FinSi
		FinPara
	FinPara
	
	//Se condiciona el parámetro queDeseasSaber para que según el operador relacional cambie lo que se muestra (mayor nota o menor nota)
	si queDeseasSaber = ">"
		Mostrar "La nota mayor fue de: " may " pts."
	SiNo
		si queDeseasSaber = "<"
			Mostrar "La nota menor fue de: " men " pts."
		FinSi
	FinSi
FinFuncion

SubAlgoritmo cargarArreglos(tamano, arr1 Por Referencia,arr2 Por Referencia)
	Definir i como Entero
	
	cedulaIni = ""
	
	Para i = 1 hasta tamano
		Mostrar "Estudiante " i "°: "
		arr1[i] = validarLetras("Ingrese el nombre del estudiante: ")
		ced = validarReal("Ingrese la cédula del alumno: ")
		cedula = cedulaIni+ConvertirATexto(ced)
		arr2(i) = cedula
	FinPara	
FinSubAlgoritmo

SubAlgoritmo cargarNomYCed(filas,columnas, matriz Por Referencia,arr)
	Definir i,j Como Entero
	Definir ced Como entero
	Definir cedulaIni, cedula Como Caracter
	
	cedulaIni = ""
	
	Para i=1 hasta filas
		Mostrar "Para estudiante " i "°: "
		Para j=1 Hasta 2
//			matriz(i,j) = validarLetras("Ingrese el nombre del estudiante: ")
//			nombre = matriz(i,j)
			ced = validarReal("Ingrese la cédula del alumno: ")
			cedula = cedulaIni+ConvertirATexto(ced)
			matriz(i,j) = cedula
		FinPara
	FinPara
FinSubAlgoritmo

Funcion promedio = calcularPromedioNotaFila(datoFila,filas,columnas,matriz)
	Definir f,c Como Entero
	Definir acum Como Real
	
	acum = 0
	f = datoFila
	Para f = datoFila Hasta filas
		Para c = 1 Hasta columnas
			acum = acum + matriz(f,c)
		FinPara
	FinPara
	promedio = acum/filas
FinFuncion

Funcion promedio = calcularPromEstudiante(filas,columnas,matriz)
	Definir i,j Como Entero
	Definir acum como real
	
	Para i=1 Hasta filas
		acum = 0
		Para j=1 Hasta columnas
			acum = acum + matriz(i,j)
		FinPara
		promedio = acum/columnas
	FinPara
FinFuncion

Funcion encontrada = ubicarCedula(filas,arr,dato,posicion Por Referencia)
	Definir i,j Como Entero
	
	encontrada = Falso
	i = 1
	Repetir
		si arr[i] = dato
			encontrada = Verdadero
		SiNo
			i=i+1
		FinSi
	Hasta Que (encontrada=Verdadero) o (i>filas)
	si encontrada
		Mostrar "La cédula fue encontrada en la posición: " i
		posicion = i
	SiNo
		Mostrar "La cédula no está registrada"
	FinSi
FinFuncion

//Módulo para mostrar cuando el usuario introduzca la cédula del alumno si tiene posibilidad
//de obtener el certificado según su promedio
SubAlgoritmo mostrarPosibCertif(dato,filas,columnas,arr1,arr2,matriz)
	Definir i,j Como Entero
	Definir encontrado Como Logico
	Definir acum, promedio Como Real
	encontrada = falso
	
	encontrada = ubicarCedula(filas,arr2,dato,posicion)
	
	si encontrada
		promedio = calcularPromedioNotaFila(posicion,filas,columnas,matriz)
		
		Para i = posicion Hasta posicion
			si promedio >= 80
				Mostrar "El estudiante: " arr1(i) " con la cédula " arr2(i) " podrá obtener el certificado" Sin Saltar
				Mostrar " por obtener un promedio de: " promedio " pts."
			SiNo
				Mostrar "El estudiante: " arr1(i) " con la cédula " arr2(i) " no podrá obtener el certificado" Sin Saltar
				Mostrar " por obtener un promedio de: " promedio " pts."
			FinSi
		FinPara
	SiNo
		Mostrar "No se encontró la cédula indicada"
	FinSi
	
FinSubAlgoritmo

Algoritmo desafio4
	//definiciones
	Definir opcMenu,cantAlum,codIdent,i,j,columna Como Entero
	Definir nomMateria,nombre,cedula Como Caracter
	Definir promedioTotal,notaMayor,notaMenor,promedioEstud Como Real
	Definir encontrado Como Logico
	
	nomMateria = validarLetras("Ingrese el nombre de la materia: ")
	codIdent = validarReal("Ingrese el código identificador de la materia: ")
	cantAlum = validarReal("Ingrese la cantidad de alumnos de la materia: ")
	
	Dimension notas[cantAlum,5]
	Dimension cedulas[cantAlum]
	Dimension nombres[cantAlum]
	Dimension estudiantes[cantAlum,2]
	
	Repetir
		Mostrar ""
		Mostrar "Menú de control de estudiantes"
		Mostrar "1 - Cargar datos de alumnos"
		Mostrar "2 - Cargar notas de alumnos"
		mostrar "3 - Ver todos los datos de la sección"
		Mostrar "4 - Obtener promedio de notas de la sección"
		Mostrar "5 - Obtener mayor nota de todas las actividades"
		Mostrar "6 - Obtener menor nota de todas las actividades"
		Mostrar "7 - Comprobar si un alumno es candidato al certificado de conocimiento"
		Mostrar "8 - Salir del sistema"
		Leer opcMenu
		Segun opcMenu Hacer
			1:
				cargarArreglos(cantAlum,nombres,cedulas)
//				cargarNomYCed(cantAlum,columna,estudiantes,nombre)
			2:
				cargarNotas(cantAlum,5,notas)
			3:
				mostrar "-Datos de la Sección: "
				Para i=1 Hasta cantAlum
					Mostrar i "° Estudiante:"
					Mostrar nombres(i) " con la cédula " cedulas(i) ", con las notas: "
					Para j=1 Hasta 5
						Mostrar j "° nota: " Sin Saltar
						Mostrar notas(i,j) " pts."
					FinPara
					Mostrar ""
				FinPara
			4:
				promedioTotal = calcularPromedioNotas(cantAlum,5,notas)
				Mostrar "El promedio total de la sección es de: " promedioTotal " pts."
			5:
				notaMayor = saberMayorOMenor(">",cantAlum,5,notas,100,0)
			6:
				notaMenor = saberMayorOMenor("<",cantAlum,5,notas,100,0)
			7:
				Mostrar "Indique la cédula del estudiante: "
				Leer cedula
				mostrarPosibCertif(cedula,cantAlum,2,nombres,cedulas,notas)
			8:
				
			De Otro Modo:
				Mostrar "Se ha equivocado, ingrese una opción correcta, para continuar presione una tecla..."
				Esperar Tecla
		Fin Segun
	Hasta Que opcMenu = 8
FinAlgoritmo
