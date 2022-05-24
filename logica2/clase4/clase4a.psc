Algoritmo clase4a
	Definir letra Como Caracter
	Definir num Como Real
	Definir i, j Como Entero
	Definir cierreHasta Como Logico
	
	i = 0
	j = 0
	
	Repetir
		//Para ir contando las iteraciones
		i = i + 1
		//Se solicita la información
		mostrar "Ingrese una letra, se le dejará de preguntar cuando ingrese la A o la Z: " Sin Saltar
		Leer letra
		//Transformando la información
		letra = Mayusculas(letra)
		//Asignacion de variable logica
		cierreHasta = (letra = "A" o letra = "Z")
		Limpiar Pantalla
	Hasta Que (cierreHasta)
	
	Repetir
		j = j + 1
		Mostrar "Ingrese un número, se le dejará de preguntar cuando ingrese un número distinto de 0: " Sin Saltar
		Leer num
		Limpiar Pantalla
	Mientras Que (num <> 0) // o ~(num = 0) o  no(num = 0)
	
	Mostrar "El número de veces que se pidió una letra fue: " i " veces"
	Mostrar "El número de veces que se pidió un número fue: " j " veces"
	
FinAlgoritmo
