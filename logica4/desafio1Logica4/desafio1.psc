Funcion dato = ubicarDato(mensaje,arreglo)
	Definir encontrado Como Logico
	Definir i Como Entero
	
	//mensaje = "Ingrese el dato a buscar en el arreglo"
	//Ingreso manualmente el tamaño del arreglo ya que no se especificó en el desafío
	
	tamArreglo = 5
	
	encontrado = Falso
	i = 1
	Repetir
		Para i=1 Hasta tamArreglo
			Mostrar mensaje ": " Sin Saltar
			Leer dato
			si dato = arreglo(i)
				encontrado = Verdadero
			FinSi
			i = i+1
		FinPara
	Hasta Que encontrado = Verdadero o i > tamArreglo
	si encontrado = Verdadero
		Mostrar "El dato ingresado se encuentra en el arreglo"
	FinSi
FinFuncion

SubAlgoritmo calcularPromedio(arreglo, valores, tamArreglo, promedio Por Referencia)
	Definir vacio Como Logico
	Definir i Como Entero
	Definir acum Como Real
	vacio = Verdadero
	Repetir
		Para  i=1 hasta tamArreglo
			si arreglo(i) = 0
				vacio = Verdadero
				Mostrar "El arreglo está vacío"
			SiNo
				vacio = Falso
			FinSi
		FinPara
	Hasta Que vacio = Falso
	
	acum = 0
	Para i=1 Hasta tamArreglo
		acum = acum+valores(i)
	FinPara
	
	promedio = promedio = acum / cont
FinSubAlgoritmo

Funcion dato = solicitarDatoEnRango(mensaje, min, max)
	Definir dato Como Real
	mostrar mensaje " :" Sin Saltar
	Mostrar "Ingrese el dato requerido en el rango de [" min " a " max "]"
	Repetir
		Leer dato
		si(!(dato >= min y dato <= max))
			Mostrar "El dato debe estar en el rango de [" min " a " max "]"
		FinSi
	Hasta Que (dato >= min y dato <= max)
FinFuncion

Funcion porc = saberPorcentaje(mensaje,arreglo,tamArreglo,dato)
	Definir contMayores Como Entero
	Definir i Como Entero
	
	contMayores = 0
	Para i = 1 Hasta tamArreglo
		si dato < arreglo(i)
			contMayores = contMayores+1
		FinSi
	FinPara
	
	porc = (contMayores/tamArreglo)*100
FinFuncion

SubAlgoritmo registrarUsuario(tamArreglo, arreglo Por Referencia)
	Definir i, j, longCadena, longMaxCad, longMinCad Como Entero
	Definir nom,clave Como Caracter
	Definir finalizar Como caracter
	Definir encontrado,claveBien Como Logico
	
	longMinCad = 6
	longMaxCad = 12
	i = 1
	j = 1
	encontrado = Falso
	Repetir
		Repetir
			Mostrar "Ingrese el nombre del usuario: "
			Leer nom
			nom = Mayusculas(nom)
			Para i=1 Hasta tamArreglo
				Si nom = arreglo(i)
					encontrado = Verdadero
					Mostrar "El nombre ya se encuentra registrado"
				FinSi
				i = i + 1
			FinPara
			si !encontrado
				arreglo[j] = nom
				j = j+1
			FinSi
		Hasta Que !encontrado o i > tamArreglo

		Repetir
			Mostrar "Ingrese la clave (solo caracteres): "
			leer clave
			clave = Mayusculas(clave)
			longCadena = Longitud(clave)
			si longCadena < longMinCad 
				Mostrar "No superó el mínimo de caracteres (" longMinCad ")"
			SiNo
				si longCadena > longMaxCad
					Mostrar "Excedió el máximo de caracteres (" longMaxCad ")"
				FinSi
			FinSi
		Hasta Que (longCadena >= 6) y (longCadena <= 12)
		Mostrar "Desea finalizar el registro de usuarios? (SI para finalizar): "
		Leer finalizar
		finalizar = Mayusculas(finalizar)
	Hasta Que finalizar = "SI"
	
	Mostrar "El nombre del usuario ingresado es: " nom
	Mostrar "La clave ingresada del usuario es: " clave
	
FinSubAlgoritmo
Algoritmo desafio4
	Dimension nombresUsuario[10]
	registrarUsuario(10,nombresUsuario)
FinAlgoritmo
