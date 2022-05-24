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

Funcion datoCaracter = capturarDatoChar(mensaje)
	Definir datoCaracter Como Caracter
	Mostrar mensaje ": " Sin Saltar
	Leer datoCaracter
FinFuncion

SubAlgoritmo cargarArreglo(tam,arr)
	Definir i Como Entero
	Para i=1 Hasta tam
		mostrar "Ingrese el nombre del " i "° estudiante: " 
		arr(i) = capturarDatoChar("")
	FinPara
FinSubAlgoritmo

SubAlgoritmo cargarMatrizRelacionadaConArreglo(filas,columnas, arr Por Referencia, matriz Por Referencia)
	Definir j,k Como Entero
	
	Para j=1 Hasta filas
		Mostrar "Para el estudiante: " arr[j]
		Para k=1 Hasta columnas
			matriz[j,k] = Aleatorio(0,100)
			Mostrar "La nota" k " ° es: " matriz[j,k]
		FinPara
	FinPara
FinSubAlgoritmo

SubAlgoritmo mostrarNotasAprobadas(filas,columnas, notaMin, matriz)
	Definir i,j Como Entero
	Definir cont Como Entero
	//notas mayores a 50 pts.
	
	cont = 0
	Para i=1 Hasta filas
		Para j=1 Hasta columnas
			si matriz(i,j) >= notaMin
				cont = cont+1
			FinSi
		FinPara
	FinPara
	
	Mostrar "La cantidad de notas aprobadas (mayor a " notaMin " pts.) es de: " cont " notas"
FinSubAlgoritmo

SubAlgoritmo mostrarMatriz(filas,columnas,arr,matriz)
	Definir i,j Como Entero
	
	Para i = 1 Hasta filas
		mostrar "El alumno " arr(i)
		Para j=1 Hasta columnas
			Mostrar "La " j "° nota es: " matriz(i,j) " pts." 
		FinPara
	FinPara
FinSubAlgoritmo

SubAlgoritmo mostrarAcumDeNotas(filas,columnas,matriz)
	Definir i,j, acum Como Entero
	
	acum = 0
	Para i=1 hasta filas
		Para j=1 Hasta columnas
			acum = acum + matriz(i,j)
		FinPara
	FinPara
	
	Mostrar "El acumulado de las notas es: " acum " pts."
FinSubAlgoritmo

SubAlgoritmo mostrarAcumEstud(filas,columnas,arr,matriz)
	Definir i,j,acum Como Entero
	
	Para i=1 Hasta filas
		acum = 0
		mostrar "El estudiante: " arr(i)
		Para j=1 Hasta columnas
			acum = acum + matriz(i,j)
		FinPara
		mostrar "- " acum " pts."
	FinPara
FinSubAlgoritmo

Algoritmo clase3c
	//Declaracion de variables
	Definir i, j Como Entero
	Definir nombres Como Caracter
	Definir notas Como Real
	Dimension nombres[5]
	Dimension notas[5,3]
	
	//Carga del arreglo
	cargarArreglo(5,nombres)
	cargarMatrizRelacionadaConArreglo(5,3,nombres,notas)
	mostrarNotasAprobadas(5,3,50,notas)
	mostrarAcumDeNotas(5,3,notas)
	mostrarAcumEstud(5,3,nombres,notas)
//	mostrarMatriz(5,3,nombres,notas)
	
FinAlgoritmo
