SubAlgoritmo saludoPer(nombre)
	Mostrar "Ingrese su nombre: " Sin Saltar
	Leer nombre
	Limpiar Pantalla
	Mostrar "Hola, " nombre
FinSubAlgoritmo

SubAlgoritmo calcularPromedio(n1,n2,n3)
	promedio = (n1+n2+n3)/3
	Mostrar "Su promedio es de: " promedio
FinSubAlgoritmo

SubAlgoritmo despedir()
	Mostrar ""
	Mostrar "Hasta luego, usuario"
FinSubAlgoritmo

Algoritmo clase1b
	Definir nombre Como Caracter
	Definir nota1,nota2,nota3, promedio Como Real
	saludoPer(nombre)
	Mostrar "Ingrese la nota 1: " Sin Saltar
	Leer nota1
	Mostrar "Ingrese la nota 2: " Sin Saltar
	Leer nota2
	Mostrar "Ingrese la nota 3: " Sin Saltar
	Leer nota3
	
	
	calcularPromedio(nota1,nota2,nota3)
	despedir()
FinAlgoritmo