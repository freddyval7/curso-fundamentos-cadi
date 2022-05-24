SubAlgoritmo pedirInformacion(mensaje, dato Por Referencia)
	Mostrar mensaje Sin Saltar
	Leer dato
FinSubAlgoritmo

SubAlgoritmo calcularPromedio(n1 ,n2, n3, promedio Por Referencia)
	promedio = (n1+n2+n3)/3
FinSubAlgoritmo

SubAlgoritmo mostrarInfo(mensaje, variab Por Referencia)
	Mostrar mensaje " " variab
FinSubAlgoritmo

SubAlgoritmo despedir()
	Mostrar ""
	Mostrar "Hasta luego, usuario"
FinSubAlgoritmo

Algoritmo clase1c
	Definir nombre Como Caracter
	Definir nota1,nota2,nota3, promedio Como Real
	
	pedirInformacion("Ingrese el nombre: ", nombre)
	pedirInformacion("Ingrese la nota 1: ", nota1)
	pedirInformacion("Ingrese la nota 2: ", nota2)
	pedirInformacion("Ingrese la nota 3: ", nota3)
	
	calcularPromedio(nota1, nota2, nota3, promedio)
	
	mostrar ""
	mostrarInfo("El alumno", nombre)
	mostrarInfo("Obtuvo una nota promedio de,", promedio)
	despedir()
FinAlgoritmo
