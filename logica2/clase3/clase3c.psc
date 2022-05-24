Algoritmo clase3c
	Definir val, edad1, edad2, nota1, nota2 Como Real
	Definir respuesta, genero Como Caracter
	
	//a
	Mostrar "Ingrese el valor: " Sin Saltar
	Leer val
	si val = 0 o val = 1
		Mostrar val
	FinSi
	
	//b
	Mostrar "Ingrese la edad: " Sin Saltar
	Leer edad1
	si edad1 >= 18 y edad1 <= 50
		Mostrar edad1
	FinSi
	
	//c
	Mostrar "Ingrese una respuesta (S/N): " Sin Saltar
	Leer respuesta
	respuesta = Mayusculas(respuesta)
	si respuesta = "S" o respuesta = "N"
		Mostrar respuesta
	FinSi
	
	//d
	Mostrar "Ingrese las notas: " 
	Leer nota1
	Leer nota2
	si (nota1 <=20 y nota1 >= 0) y (nota2 <= 20 y nota2 >= 0)
		Mostrar nota1
	FinSi
	
	//i
	Mostrar "Ingrese el genero (M/F) y edad: "
	Leer genero
	Leer edad2
	genero = Mayusculas(genero)
	si (genero = "F" y edad2 >= 18) o (genero = "M" y edad2 < 18)
		Mostrar genero
		Mostrar edad2
	FinSi
FinAlgoritmo
