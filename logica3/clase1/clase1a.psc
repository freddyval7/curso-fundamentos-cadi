SubAlgoritmo saludoPer()
	Mostrar "Ingrese su nombre: " Sin Saltar
	Leer nombre
	Limpiar Pantalla
	Mostrar "Hola, " nombre
FinSubAlgoritmo

SubAlgoritmo calcularPromedio()
	Mostrar "Ingrese la nota 1: " Sin Saltar
	Leer nota1
	Mostrar "Ingrese la nota 2: " Sin Saltar
	Leer nota2
	Mostrar "Ingrese la nota 3: " Sin Saltar
	Leer nota3
	promedio = (nota1+nota2+nota3)/3
	Mostrar "Su promedio es de: " promedio
FinSubAlgoritmo

SubAlgoritmo despedir()
	Mostrar ""
	Mostrar "Hasta luego, usuario"
FinSubAlgoritmo

Algoritmo clase1a
	Definir nombre Como Caracter
	Definir nota1,nota2,nota3, promedio Como Real
	
	saludoPer()
	calcularPromedio()
	despedir()
FinAlgoritmo
