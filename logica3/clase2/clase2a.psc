SubAlgoritmo promedio(val1, val2, val3, prom Por Referencia)
	prom = (val1 + val2 + val3)/3
FinSubAlgoritmo

SubAlgoritmo pedirInformacion(mensaje, dato Por Referencia)
	Mostrar mensaje Sin Saltar
	Leer dato
FinSubAlgoritmo

SubAlgoritmo procesarAlum(canti)
	Definir i Como Entero
	Definir nota1,nota2,nota3, prom Como Real
	Para i=1 Hasta canti
		Mostrar "Ingrese la primera nota: " Sin Saltar
		Leer nota1
		Mostrar "Ingrese la segunda nota: " Sin Saltar
		Leer nota2
		Mostrar "Ingrese la tercera nota: " Sin Saltar
		Leer nota3
		promedio(nota1,nota2,nota3,prom)
		Mostrar "El promedio del " i "° alumno es: " prom
	FinPara
FinSubAlgoritmo

Algoritmo clase2a
	Definir nom1,nom2,nom3 Como Caracter
	Definir cantidadAlum, i Como Entero
	
	pedirInformacion("Ingrese la cantidad de alumnos",cantidadAlum)
	procesarAlum(cantidadAlum)
	
FinAlgoritmo
