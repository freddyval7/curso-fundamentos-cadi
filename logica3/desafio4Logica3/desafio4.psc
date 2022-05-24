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

Funcion promedio = calcularPromedio(acum,cont)
	Definir promedio Como Real
	si cont <> 0
		promedio = acum / cont
	SiNo
		Mostrar "No se puede calcular con un contador igual a 0"
		promedio = 0
	FinSi
FinFuncion

SubAlgoritmo procesarArreglo(nombsSucur Por Referencia,totDeVent Por Referencia)
	Definir i, j, k Como Entero
	Definir auxNombre Como Caracter
	Definir auxVenta Como Real
	Definir repetido Como Logico
	
	para i = 1 Hasta 10
		Repetir
			auxNombre = capturarDatoChar("Ingrese el nombre de la sucursal")
			auxVenta = capturarDatoNum("Ingrese la venta de la sucursal")
			Para j=1 Hasta 10
				si auxNombre = nombsSucur(j) o auxVenta = totDeVent(j)
					repetido = Verdadero
				FinSi
			FinPara
			totDeVent(i) = auxVenta
			nombsSucur(i) = auxNombre
		Hasta Que !repetido
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo mostMenYmayMont(nombsSucur,totDeVent,montMayor Por Referencia, montMenor Por Referencia, nomMayor Por Referencia, nomMenor Por Referencia)
	Definir k,m Como Entero
	
	montMayor=totDeVent[1]
	nomMayor=nombsSucur[1]
	Para k=2 Hasta 10
		si totDeVent(k) > montMayor
			montMayor = totDeVent(k)
			nomMayor = nombsSucur(k)
		FinSi
	FinPara
	
	montMenor=totDeVent[1]
	nomMenor=nombsSucur[1]
	Para m=2 Hasta 10
		si totDeVent(m) < montMenor
			montMenor = totDeVent(m)
			nomMenor = nombsSucur(m)
		FinSi
	FinPara
	
	Mostrar "La sucursal " nomMayor " obtuvo el mayor monto de ventas, con: " montMayor " Bs."
	Mostrar "La sucursal " nomMenor " obtuvo el menor monto de ventas, con: " montMenor " Bs."
FinSubAlgoritmo

Funcion prom = promedioArreglo(totDeVent)
	Definir i Como Entero
	Definir acum Como Real
	
	acum = 0
	
	Para i=1 Hasta 10
		acum = acum+totDeVent(i)
	FinPara
	
   prom = calcularPromedio(acum,10)
FinFuncion

SubAlgoritmo listSucursalesMayor(nombsSucur,totDeVent,prom)
	Definir i Como Entero
	Definir j Como Entero
	Definir acum Como Real
	
	acum = 0
	
	Para i=1 Hasta 10
		acum = acum+totDeVent(i)
	FinPara
	
	prom = calcularPromedio(acum,10)
	Mostrar "Las sucursales que tienen un monto mayor de ventas al promedio son: "
	Para j=1 Hasta 10
		si totDeVent(j) > prom
			Mostrar nombsSucur(j)
		FinSi
	FinPara
FinSubAlgoritmo

SubAlgoritmo busqueda(nombsSucur)
	Definir i Como Entero
	Definir encontrado Como Logico
	Definir sucur Como Caracter
	encontrado = Falso
	Repetir
		Mostrar "Introduzca la sucursal a buscar: " Sin Saltar
		Leer sucur
		i = 1
		si nombsSucur(i) = sucur
			encontrado=Verdadero
			Mostrar "La sucursal " sucur " fue encontrada"
		FinSi
		si encontrado = Falso
			Mostrar "La sucursal " sucur " no está registrada"
		FinSi
	Hasta Que (encontrado=Verdadero) o (i>10)
FinSubAlgoritmo

Algoritmo desafio4
	Dimension nombresSucursales[10]
	Dimension totalDeVentas[100]
	Definir opc Como Entero
	Repetir
		Mostrar ""
		Mostrar "Menú de control de sucursales"
		Mostrar "1 - Procesar los datos"
		Mostrar "2 - Mostrar la sucursal con mayor y menor venta"
		mostrar "3 - Listado de sucursales con ventas mayores al promedio"
		Mostrar "4 - Busqueda de una sucursal específica"
		Mostrar "5 - Salir"
		Leer opc
		Segun opc Hacer
			1:
				procesarArreglo(nombresSucursales,totalDeVentas)
			2:
				mostMenYmayMont(nombresSucursales,totalDeVentas,montoMayor,montoMenor,nombreMayor,nombreMenor)
			3:
				listSucursalesMayor(nombresSucursales,totalDeVentas,promedio)
			4:
				busqueda(nombresSucursales)
			5:
				
			De Otro Modo:
				Mostrar "Por favor, ingrese una opción correcta, presione una tecla para reiniciar..."
				Esperar Tecla
				Limpiar Pantalla
		Fin Segun
	Hasta Que opc = 5
FinAlgoritmo
