Algoritmo clase3d
	Definir edad Como Entero
	Definir estado_civil Como Caracter
	Definir mayor_edad Como Logico
	Definir solteria, emparejado Como Logico
	
	Mostrar "Ingrese la edad: " Sin Saltar
	Leer edad
	Mostrar "Indique su estado civil ([S]oltero/[P]areja): " Sin Saltar
	Leer estado_civil
	
	estado_civil = Mayusculas(estado_civil)
	
	mayor_edad = (edad >= 18)
	solteria = (estado_civil = "S")
	emparejado = (estado_civil = "P")
	
	si no mayor_edad
		Mostrar "La persona es menor de edad"
	SiNo
		Mostrar "La persona es mayor de edad"
	FinSi
	
	si no solteria
		Mostrar "Tiene pareja"
	FinSi
	
	si no emparejado
		Mostrar "No tiene pareja"
	FinSi
	
FinAlgoritmo
