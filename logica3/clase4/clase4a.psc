
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

SubAlgoritmo tablaPersMult(in,ix,jn,jx)
	Definir i,j Como Entero
	Para i=in Hasta ix
		Mostrar "Esta es la tabla del " i
		Para j = jn Hasta jx
			Mostrar i " * " j " = " i*j
		FinPara
	FinPara
FinSubAlgoritmo

Algoritmo clase4a
	//Hacer tabla de multiplicar
	//Pero, pidiendo al usuario máximos y mínimos
	Definir factMin, factMax, imin, imax , jmax, jmin Como Entero
	
	//Entradas fuera de los ciclos
	imin = pedirDatoNumRango("Ingresa el valor mínimo de la tabla", 1, 10)
	imax = pedirDatoNumRango("Ingresa el valor máximo de la tabla",1, 10)
	jmin = pedirDatoNumRango("Ingresa el valor mínimo del múltiplo",1, 10)
	jmax = pedirDatoNumRango("Ingresa el valor máximo del múltiplo",1, 10)
	
	//Proceso y salida
	tablaPersMult(imin,imax,jmin,jmax)
FinAlgoritmo
