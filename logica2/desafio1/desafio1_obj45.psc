Algoritmo desafio1_obj45
	Definir nombre, genero Como Caracter
	Definir n, i Como Entero
	Mostrar "Objetivo 4 y 5: "
	Mostrar "Ingrese el número de personas: " Sin Saltar
	Leer n
	Para i=1 Hasta n Hacer
		Mostrar "Ingrese el nombre de la persona nro " i " : " Sin Saltar
		Leer nombre
		Mostrar "Ingrese su género (M/F): "Sin Saltar
		Leer genero
		Si genero == "M" Entonces
			Mostrar nombre " es Hombre"
		FinSi
		Si genero == "F" Entonces
			Mostrar nombre " es Mujer"
		FinSi
		Mostrar ""
	FinPara

FinAlgoritmo
