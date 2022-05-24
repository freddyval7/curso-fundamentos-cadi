Funcion datoCaracter = capturarDatoChar(mensaje)
	Definir datoCaracter como Caracter
	Mostrar mensaje ": " Sin Saltar
	Leer datoCaracter
FinFuncion

Funcion dato = pedirDatoNumRango(mensaje, min, max)
	Definir dato como Real
	Mostrar mensaje
	Mostrar "Ingrese el dato requerido en el rango de [" min " a " max "]"
	Repetir
		Leer dato
		Si (!(dato >= min Y dato <= max))
			Mostrar "El dato debe estar en el rango de [" min "-" max "]"
		FinSi
	Hasta Que (dato >= min Y dato <= max)
FinFuncion

SubAlgoritmo cargarArreglo(tamano, arr Por Referencia)
	Definir i como Entero
	Para i = 1 hasta tamano
		arr[i] = capturarDatoChar("Ingrese el nombre")
	FinPara
FinSubAlgoritmo

SubAlgoritmo cargarMatrizRelacionadoConArreglo(filas, columnas, arr, matriz Por Referencia)
	Definir j, k como Entero
	Para j=1 hasta filas
		Para k=1 hasta columnas
			matriz[j,k] = Aleatorio(0,100)
		FinPara
	FinPara
FinSubAlgoritmo

SubAlgoritmo mostrarDatosArrYMatriz(filas, columnas, arr, matriz)
	Definir i,j  Como Entero
	Para i=1 hasta filas
		Mostrar "El alumno " arr[i] " sus notas: " Sin Saltar
		Para j=1 hasta columnas
			Mostrar "La " j "° nota: " matriz[i,j] " puntos." Sin Saltar
		FinPara
		Mostrar ""
	FinPara
FinSubAlgoritmo

Funcion cantAprobados = Func_Contar_Aprobados(filas, columnas, notaMinima, matriz)
	Definir i,j como Entero
	Definir cantAprobados Como Entero
	cantAprobados = 0
	Para i=1 hasta filas
		Para j=1 hasta columnas
			Si matriz[i,j] >= notaMinima
				cantAprobados = cantAprobados + 1
			FinSi
		FinPara
	FinPara
FinFuncion

Funcion acum = Func_Acumular_Datos_Matriz(filas, columnas, matriz)
	Definir i,j Como Entero
	Definir acum Como Real
	acum = 0
	Para i=1 Hasta filas
		Para j=1 hasta columnas
			acum = acum + matriz[i,j]
		FinPara
	FinPara
FinFuncion

SubAlgoritmo mostrarNotasAcumPorEstudiante(filas, columnas, arr, matriz)
	Definir i, j Como Entero
	Definir aux Como Real
	Para i=1 hasta filas
		aux = 0
		Mostrar "El estudiante " arr[i] " tiene un acumulado de notas de: " Sin Saltar
		Para j=1 hasta columnas
			aux = aux + matriz[i,j]
		FinPara
		Mostrar aux
	FinPara
FinSubAlgoritmo

Proceso clase3practica10
	//	Declaraciones de variables
	Definir nombres Como Caracter
	Definir notas, acumuladoNotas como Real
	Definir cantAprobados Como Entero
	Dimension nombres[5]
	Dimension notas[5,3]
	//	Entradas - Carga de arreglo
	cargarArreglo(5, nombres)
	cargarMatrizRelacionadoConArreglo(5, 3, nombres, notas)
	mostrarDatosArrYMatriz(5,3,nombres, notas)
	cantAprobados = Func_Contar_Aprobados(5,3,50,notas)
	Mostrar "El numero de examenes aprobados es: " cantAprobados
	acumuladoNotas = Func_Acumular_Datos_Matriz(5,3,notas)
	Mostrar "El acumulado de todas las notas es: " acumuladoNotas
	mostrarNotasAcumPorEstudiante(5,3,nombres, notas)
	
	
	
FinProceso