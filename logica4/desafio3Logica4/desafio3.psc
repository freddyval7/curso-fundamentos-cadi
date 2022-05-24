SubAlgoritmo cargarMatriz(filas,columnas,matriz Por Referencia, arr Por Referencia)
	Definir i,j Como Entero
	Definir cont Como Entero
	Definir detener Como Logico
	
	//Le doy los nombres de los días al arreglo
	arr(1) = "Domingo"
	arr(2)  = "Lunes"
	arr(3)  = "Martes"
	arr(4)  = "Miércoles"
	arr(5) = "Jueves"
	arr(6) = "Viernes"
	arr(7) = "Sábado"
	
	cont = 0
	Repetir
		Para i=1 Hasta filas
			Para j=1 Hasta columnas
				si ~(i=5 y (arr(j)="Miércoles" o arr(j)="Jueves" o arr(j)="Viernes" o arr(j)="Sábado"))
					//Se genera el valor aleatorio en la matriz
					matriz(i,j) = Aleatorio(19,34)
				FinSi
				si j=5 y i=3
					detener = Verdadero
				FinSi
			FinPara
		FinPara
	Hasta Que detener = Verdadero //Cuando la matriz llegue a 31 valores, se detiene la carga de la matriz
FinSubAlgoritmo

SubAlgoritmo calcularPromedioMatriz(filas,columnas,matriz,prom Por Referencia)
	Definir i,j Como Entero
	Definir acum Como Entero
	Definir cont Como Entero
	
	acum = 0
	Para i=1 Hasta filas
		para j=1 Hasta columnas
			acum = acum + matriz(i,j)
		FinPara
	FinPara
	
	//Se calcula el promedio
	prom = acum/31	
FinSubAlgoritmo

SubAlgoritmo mostrarDiasQueSuperaronPromedio(filas,columnas,matriz,prom)
	Definir i,j Como Entero
	Definir cont Como Entero
	
	Para i=1 Hasta filas
		para j=1 Hasta columnas
			si matriz(i,j) > prom
				cont = cont + 1
			FinSi
		FinPara
	FinPara
	
	//Se muestran los dias que superaron el promedio de temperatura
	Mostrar ""
	Mostrar cont " días superaron el promedio de temperatura"
FinSubAlgoritmo

SubAlgoritmo calcularYMostrarPorcentajeMatriz(filas,columnas,matriz,porc Por Referencia)
	Definir cont,i,j Como Entero
	
	cont = 0
	Para i=1 Hasta filas
		para j=1 Hasta columnas
			//Si la temperatura es menor a 25, el contador aumenta
			si matriz(i,j) < 25
				cont = cont + 1
			FinSi
		FinPara
	FinPara
	
	//se calcula el porcentaje
	porc = (cont/31) * 100
	
	//Se muestra cuantos días, en porcentaje, obtuvieron una temperatura menor a 25
	Mostrar ""
	Mostrar "Un " porc "% de los días obtuvieron una temperatura menor a 25°"
	Mostrar ""
FinSubAlgoritmo

SubAlgoritmo mostrarMatriz(filas,columnas,matriz,arr)
	Definir i,j Como Entero
	
	Mostrar "Presione una tecla para mostrar todos los datos registrados "
	Esperar Tecla
	
	Para i=1 Hasta filas
		Mostrar "Semana " i "°: "
		para j=1 Hasta columnas
				si ~(i=5 y (arr(j)="Miércoles" o arr(j)="Jueves" o arr(j)="Viernes" o arr(j)="Sábado"))
					Mostrar  arr(j) ": "
					Mostrar "- La temperatura obtenida fue de: " matriz(i,j) "°"
				FinSi
			FinPara
			Mostrar ""
	FinPara
FinSubAlgoritmo

Algoritmo desafio3
	Definir mes,porcentaje,promedio Como Real
	Dimension mes[5,7]
	Dimension nomDias[7]
	
	cargarMatriz(5,7,mes,nomDias)
	calcularPromedioMatriz(5,7,mes,promedio)
	mostrarDiasQueSuperaronPromedio(5,7,mes,promedio)
	calcularYMostrarPorcentajeMatriz(5,7,mes,porcentaje)
	mostrarMatriz(5,7,mes,nomDias)
	
FinAlgoritmo
