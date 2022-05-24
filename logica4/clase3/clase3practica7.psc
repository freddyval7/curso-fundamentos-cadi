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

SubAlgoritmo cargarArreglos(tamanoArreglos, m1, m2, m3, a Por Referencia, b Por Referencia, c Por Referencia)
	Definir i como entero
	Para i=1 hasta tamanoArreglos
		a[i] = capturarDatoChar(m1)
		b[i] = pedirDatoNumRango(m2, 0, 20)
		c[i] = pedirDatoNumRango(m3, 0, 20)
	FinPara
FinSubAlgoritmo

SubAlgoritmo acumuladorNotas(a, b, acumulador Por Referencia)
	Definir i Como Entero
	Para i = 1 hasta 5
		acumulador[i] = a[i] + b[i]
	FinPara
FinSubAlgoritmo

SubAlgoritmo mostrarInformacion(name, acum)
	Definir i Como Entero
	Para i=1 hasta 5
		Mostrar "El alumno " name[i] " obtuvo: " Sin Saltar
		Mostrar acum[i] " puntos acumulados"
	FinPara
FinSubAlgoritmo

Algoritmo clase3practica7
	Definir i como Entero
	Definir nombres Como Caracter
	Definir parcial1, parcial2, acumulada como Real
	//Definicion de variables
	Dimension nombres[5]
	Dimension parcial1[5]
	Dimension parcial2[5]
	Dimension acumulada[5]
	
	//Entradas - Carga de Arreglos
	cargarArreglos(5, "Ingrese el nombre: ", "Ingrese la nota parcial 1: ", "Ingrese la nota parcial 2: ", nombres, parcial1, parcial2)
	acumuladorNotas(parcial1, parcial2, acumulada)
	mostrarInformacion(nombres, acumulada)
FinAlgoritmo
