Funcion dato = pedirDatoCharDual(mensaje,opc1,opc2)
	Definir dato Como Caracter
	opc1 = Mayusculas(opc1)
	opc2 = Mayusculas(opc2)
	mostrar "Ingrese el dato requerido: [" opc1 " o " opc2 "]"
	Repetir
		mostrar mensaje ": " Sin Saltar
		Leer dato
		dato = Mayusculas(dato)
		si (!(dato = opc1 o dato = opc2))
			mostrar "Ingrese el dato requerido: [" opc1 " o " opc2 "]"
		FinSi
	Hasta Que (dato = opc1 o dato = opc2)
FinFuncion

Funcion encontrado = buscarEnArregloCaracterQueNoExista(datoABuscar, tamanoArreglo, arreglo)
	Definir k Como Entero
	Definir encontrado Como Logico
	
	encontrado = Falso
	k=1
	Repetir
		Si datoABuscar = arreglo(k)
			encontrado = Verdadero
		FinSi
		k = k + 1
	Hasta Que encontrado = Verdadero O k > tamanoArreglo
	Si encontrado = Verdadero
		Mostrar "El dato a buscar ya existe en el arreglo!"
	FinSi
FinFuncion

SubAlgoritmo solicitarTiposPanes(longMaxCadena, arreglo Por Referencia)
	Definir finalizar,auxPan Como Caracter
	Definir i, longCadena Como Entero
	Definir cadVacia,tipoExiste Como Logico
	i=1
	Repetir
		//validacion de que el dato no sea vacío ni supere el tamaño requerido
		Repetir
			Mostrar "Ingrese el " i "° tipo de pan: " Sin Saltar
			leer auxPan
			auxPan = Mayusculas(auxPan)
			longCadena = longitud(auxPan)
			cadVacia = (auxPan="")
			si cadVacia
				Mostrar "El tipo de pan debe ser escrito, no dejar vacío"
			SiNo
				si longCadena > longMaxCadena
					Mostrar "El tipo de pan ingresado excede la longitud de caracteres esperada (" longMaxCadena " caracteres)"
				FinSi
			FinSi
		Hasta Que (longCadena < longMaxCadena y ~cadVacia)
		tipoExiste = buscarEnArregloCaracterQueNoExista(auxPan,10,arreglo)
		si !tipoExiste
			arreglo[i] = auxPan
			i = i+1
			finalizar = pedirDatoCharDual("Desea finalizar?","SI","NO")
		SiNo
			Mostrar "El tipo de pan ingresado ya existe, ingrese otro"
			finalizar = "NO"
		FinSi
	Hasta Que finalizar = "SI"
	Limpiar Pantalla
FinSubAlgoritmo

SubAlgoritmo mostrarDatosArreglo(tamanoArreglo,arreglo)
	Definir i Como Entero
	Para i=1 Hasta tamanoArreglo
		si !(arreglo(i) = "")
			Mostrar i "° - " arreglo(i)
		FinSi
	FinPara
FinSubAlgoritmo

Algoritmo clase1b
	Definir tipoPanes Como Caracter
	Definir j Como Entero
	Dimension tipoPanes[10]
	//Inicializar el arreglo
	Para  j=1 Hasta 10
		tipoPanes[j] = ""
	FinPara
	
	solicitarTiposPanes(10,tipoPanes)
	Mostrar "Los tipos de panes ingresados son: "
	Mostrar ""
	mostrarDatosArreglo(10,tipoPanes)
	
FinAlgoritmo
