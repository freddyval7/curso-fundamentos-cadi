Algoritmo clase4b3
	Definir letra Como Caracter
	Definir i Como Entero
	Definir val Como Logico
	i=0
	val = Falso
	Mientras ~(val)
		i=i+1
		Mostrar "Ingrese una letra (S/N): " Sin Saltar
		Leer letra
		letra = Mayusculas(letra)
		val = (letra = "S" o letra = "N")
		si ~val
			Mostrar "Ingresó una letra incorrecta"
			Mostrar ""
		FinSi
	FinMientras
	
	Mostrar "Letra ingresada correcta"
	Mostrar ""
	Mostrar "Su número de intentos fue de: " i " intentos"
FinAlgoritmo
