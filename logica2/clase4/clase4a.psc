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
		//Se solicita la informaci�n
		mostrar "Ingrese una letra, se le dejar� de preguntar cuando ingrese la A o la Z: " Sin Saltar
		Leer letra
		//Transformando la informaci�n
		letra = Mayusculas(letra)
		//Asignacion de variable logica
		cierreHasta = (letra = "A" o letra = "Z")
		Limpiar Pantalla
	Hasta Que (cierreHasta)
	
	Repetir
		j = j + 1
		Mostrar "Ingrese un n�mero, se le dejar� de preguntar cuando ingrese un n�mero distinto de 0: " Sin Saltar
		Leer num
		Limpiar Pantalla
	Mientras Que (num <> 0) // o ~(num = 0) o  no(num = 0)
	
	Mostrar "El n�mero de veces que se pidi� una letra fue: " i " veces"
	Mostrar "El n�mero de veces que se pidi� un n�mero fue: " j " veces"
	
FinAlgoritmo
