SubAlgoritmo contarPuntos(carac_i, contador Por Referencia)
	si carac_i = "."
		contador = contador + 1
	FinSi
FinSubAlgoritmo

Funcion esNum = validarCaracterNum(caract)
	Definir caracteresNumericos, caracNum Como Caracter
	Definir longCarac, i Como Entero
	
	caracteresNumericos = "0123456789."
	longCarac = Longitud(caracteresNumericos)
	i = 1
	Repetir
		caracNum = Subcadena(caracteresNumericos,i,i)
		esNum = (caract = caracNum)
		i = i + 1
	Hasta Que (esNum o i > longCarac)
FinFuncion

Funcion valorValido = validarReal(mensaje)
	Definir cadCaracteres,carac_i Como Caracter
	Definir caracterEsNum Como Logico
	Definir i, longCad, contPuntos Como Entero
	
	Repetir
		Mostrar mensaje Sin Saltar
		Leer cadCaracteres
		longCad = longitud(cadCaracteres)
		i=1
		contPuntos=0
		Repetir
			carac_i = Subcadena(cadCaracteres,i,i)
			caracterEsNum = validarCaracterNum(carac_i)
			contarPuntos(carac_i,contPuntos)
			si caracterEsNum
				i = i + 1
			FinSi
		Mientras Que (i<=longCad y caracterEsNum)
		si ~caracterEsNum o contPuntos > 1
			Mostrar "Ingrese un valor válido"
			Mostrar ""
		FinSi
	Hasta Que (caracterEsNum y contPuntos < 2)
	valorValido = ConvertirANumero(cadCaracteres)
FinFuncion

Algoritmo clase2b
	Definir dato, i, j Como Entero
	Definir aux, nums Como Real
	Dimension nums[10]
	
	Para i=1 Hasta 10
		Mostrar "Ingrese el " i "° número: " Sin Saltar
		dato = validarReal("Ingrese un número real: ")
		nums(i) = dato
	FinPara
	
	Mostrar "Arreglo sin ordenar"
	
	Para i = 1 Hasta 10
		Mostrar nums(i)
	FinPara
	
	//Ordenamiento burbuja ascendente
	Para i = 1 Hasta 10
		Para j=1 Hasta 9 //RECORDAR que es hasta tamaño-1, por eso es 9 y no 10
			si nums[j] > nums[j+1]
				aux = nums[j]
				nums[j] = nums[j+1]
				nums[j+1] = aux
			FinSi
		FinPara
	FinPara
	
	Mostrar ""
	Mostrar "Arreglo ordenado de manera ascendente: "
	Para i=1 Hasta 10
		Mostrar nums(i)
	FinPara
	
	//Ordenamiento burbuja descendente
	Para i = 1 Hasta 10
		Para j=1 Hasta 9
			si nums[j] < nums[j+1]
				aux = nums[j]
				nums[j] = nums[j+1]
				nums[j+1] = aux
			FinSi
		FinPara
	FinPara
	
	Mostrar ""
	Mostrar "Arreglo ordenado de manera descendente: "
	Para i=1 Hasta 10
		Mostrar nums(i)
	FinPara
FinAlgoritmo
