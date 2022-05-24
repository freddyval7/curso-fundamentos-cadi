Funcion datoCaracter = capturarDatoChar(mensaje)
	Definir datoCaracter como Caracter
	Mostrar mensaje ": " Sin Saltar
	Leer datoCaracter
FinFuncion

Funcion varLogica=Func_validar_caracter_numeroOPunto(caract)
	Definir caracteresNumericosYPunto, carac_num como Caracter
	Definir longitudCaracteres, i, j, longitudDato como Entero
	Definir varLogica como Logico
	
	caracteresNumericosYPunto = "0123456789."
	longitudCaracteres = Longitud(caracteresNumericosYPunto)
	longitudDato = Longitud(caract)
	i=1
	j=1
	Repetir
		Repetir
			carac_num = Subcadena(caracteresNumericosYPunto, i, i)
			varLogica = (Subcadena(caract,j,j) = carac_num)
			i = i+1
		Hasta Que (varLogica O i>longitudCaracteres)
		j= j+1
	Hasta Que (j>=longitudDato O ~varLogica)
FinFuncion

Funcion varLogica=Func_validar_caracterAlfabetico(dato)
	Definir caract, carac_num como Caracter
	Definir longitudCaracteres, i como Entero
	Definir varLogica como Logico
	
	caract = "abcdefghijklmnopqrstuvwxyz"
	longitudCaracteres = Longitud(caract)
	i=1
	dato = Minusculas(dato)
	Repetir
		carac_num = Subcadena(caract, i, i)
		varLogica = (dato = carac_num)
		i = i+1
	Hasta Que (varLogica O i>longitudCaracteres)
FinFuncion

Funcion dato = pedirDatoCharDual(mensaje, opc1, opc2)
	Definir dato Como Caracter
	Definir validador Como Logico
	opc1 = Mayusculas(opc1)
	opc2 = Mayusculas(opc2)
	Mostrar mensaje
	Mostrar "Ingrese el dato requerido: [" opc1 " O " opc2 "]"
	Repetir
		leer dato
		validador = Func_validar_caracterAlfabetico(dato)
		Si validador
			dato =  Mayusculas(dato)
		FinSi
	Hasta Que ((dato = opc1 O dato = opc2) Y validador)
FinFuncion

Funcion aux = pedirDatoNumRango(mensaje, min, max)
//	Definir dato como Real
	Definir validador Como Logico
	Mostrar mensaje
	Mostrar "Ingrese el dato requerido en el rango de [" min " a " max "]"
	Repetir
		Leer dato
		validador = Func_validar_caracter_numeroOPunto(dato)
		Si validador
			aux = ConvertirANumero(dato)
			Si (!(aux >= min Y aux <= max))
				Mostrar "El dato debe estar en el rango de [" min "-" max "]"
			FinSi
		SiNo
			Mostrar "El dato ingresado es erroneo, reintente!"
		FinSi
	Hasta Que ((aux >= min Y aux <= max))
FinFuncion

SubAlgoritmo cargarArreglos(tamanoArreglos, a Por Referencia, b Por Referencia, c Por Referencia)
	Definir i Como Entero
	Para i = 1 hasta tamanoArreglos
		a[i] = capturarDatoChar("Ingrese el nombre")
		b[i] = pedirDatoCharDual("Indique el genero", "M", "F")
		c[i] = pedirDatoNumRango("Ingrese la edad", 15, 70)
	FinPara
FinSubAlgoritmo

Funcion prom = Func_Promedio_Arreglo(tamano, arreglo)
	Definir i Como Entero
	Definir acumulador como Real
	acumulador = 0
	Si tamano <>0
		Para i=1 hasta tamano
			acumulador = acumulador + arreglo[i]
		FinPara
		prom = acumulador / tamano
	FinSi
FinFuncion

Proceso clase3practica8
	//	Definiciones de variables
	Definir nombres, sexo Como Caracter
	Definir edad, i como Entero
	Definir edadPromedio Como Real
	Dimension nombres[7]
	Dimension sexo[7]
	Dimension edad[7]
	
	//Entradas - Carga de Arreglos
	cargarArreglos(7, nombres, sexo, edad)
	edadPromedio = Func_Promedio_Arreglo(7, edad)
	Mostrar "La edad promedio es: " edadPromedio
	Mostrar "Femeninas con edad superior al promedio: "
	Para i = 1 hasta 7
		Si edad[i] > edadPromedio Y sexo[i] = "F"
			Mostrar nombres[i]
		FinSi
	FinPara
	
FinProceso
