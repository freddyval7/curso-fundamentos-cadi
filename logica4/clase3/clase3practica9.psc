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
		Mostrar "Para el estudiante: " arr[j]
		Para k=1 hasta columnas
			Mostrar "Ingrese la nota " k "°: " Sin Saltar
			matriz[j,k] = pedirDatoNumRango("", 0, 100)
		FinPara
	FinPara
FinSubAlgoritmo

SubAlgoritmo mostrarDatosArrYMatriz(filas, columnas, arr, matriz)
	Definir i,j  Como Entero
	Para i=1 hasta filas
		Mostrar "El alumno " arr[i]
		Para j=1 hasta columnas
			Mostrar "La " j "° nota: " matriz[i,j] " puntos."
		FinPara
	FinPara
FinSubAlgoritmo

Proceso clase3practica9
	//	Declaraciones de variables
	Definir nombres Como Caracter
	Definir notas como Real
	Dimension nombres[5]
	Dimension notas[5,3]
	//	Entradas - Carga de arreglo
	cargarArreglo(5, nombres)
	cargarMatrizRelacionadoConArreglo(5, 3, nombres, notas)
	mostrarDatosArrYMatriz(5,3,nombres, notas)
FinProceso
