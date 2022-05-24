Funcion datoNum = capturarDatoNum(mensaje)
	Definir datoNum Como real
	Mostrar mensaje ": " Sin Saltar
	Leer datoNum
FinFuncion

Funcion datoCaracter = capturarDatoChar(mensaje)
	Definir datoCaracter Como Caracter
	Mostrar mensaje ": " Sin Saltar
	Leer datoCaracter
FinFuncion

Algoritmo clase4c
	Definir cantProd, i, j, k, m, n, contadorVenta Como Entero
	Definir auxCodigo,auxCodigoVenta,auxBusqueda Como Caracter
	Definir repetido, encontrado Como Logico
	
	cantProd = capturarDatoNum("Ingrese la cantidad de productos")
	
	Dimension codsPart[cantProd]
	//Se crea el arreglo de las ventas, con un valor relativamente alto
	//debido a que en pseint no se pueden usar arreglos sin declarar tamaño
	Dimension codsPartVend[10]
	
	Para i=1 hasta cantProd
		//Si el usuario escribe un codigo que forma parte del arreglo
		//le impido continuar
		Repetir
			auxCodigo = capturarDatoChar("Ingrese el código del producto")
			Para j=1 Hasta cantProd
				si auxCodigo = codsPart(j)
					repetido = Verdadero
				FinSi
			FinPara
			//Una vez verificado que no se repite, se guarda
			codsPart(i) = auxCodigo
		Hasta Que !repetido
	FinPara
	
	//Cargar las ventas
	Para m = 1 Hasta  10
		encontrado = Falso
		
		Repetir
			Mostrar "Ingrese el codigo vendido: " Sin Saltar
			Leer auxCodigoVenta
			//Inicializo k en 1 porque los arreglos son base 1
			k=1
			Repetir
				si auxCodigoVenta = codsPart(k)
					encontrado = Verdadero
				FinSi
				k = k+1
				si encontrado = Falso
					Mostrar "El codigo no existe en la base de datos"
				FinSi
			Hasta Que encontrado = Verdadero o k > cantProd
		Hasta Que encontrado = Verdadero
		codsPartVend(m) = auxCodigoVenta 
	FinPara
	
	//Contar cuantas veces fue vendido un articulo
	Mostrar "Ingrese el codigo que desea contar: " Sin Saltar
	Leer auxBusqueda
	
	contadorVenta = 0
	
	Para n=1 hasta 10
		si auxBusqueda = codsPartVend(n)
			contadorVenta = contadorVenta + 1
		FinSi
	FinPara
	Mostrar "El codigo: " auxBusqueda " se vendió " contadorVenta " veces hoy"
	
FinAlgoritmo

