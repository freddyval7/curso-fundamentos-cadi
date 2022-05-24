Funcion validador = validarNumsMinMax(min, max)
	Definir validador Como Logico
	si min < max
		validador = Verdadero
	SiNo
		validador = Falso
	FinSi
FinFuncion

Funcion dato = validarNumPositivo(mensaje)
	Definir dato Como Real
	Repetir
		Mostrar mensaje
		Leer dato
		si dato < 0 Entonces
			Mostrar "El dato requerido debe ser positivo"
		FinSi
		si dato = 0
			Mostrar "El dato requerido no debe ser cero"
		FinSi
	Hasta Que dato > 0
FinFuncion

Funcion dato = pedirDatoNumRango(mensaje, min, max)
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

Algoritmo clase1a
	Definir cantidad Como Entero
	Definir precioBase, montoTotal, iva, precioMin, precioMax, subTotal Como Real
	Definir validador Como Logico
	
	Repetir
		Mostrar "Ingresa el precio minimo del rango de precio: "
		Leer precioMin
		Mostrar "Ingresa el precio maximo del rango de precio: "
		Leer precioMax
		validador = validarNumsMinMax(precioMin,precioMax)
		si validador = Falso
			Mostrar "El precio minimo debe ser menor al maximo"
		FinSi
	Hasta Que validador
	
	cantidad = validarNumPositivo("Ingrese la cantidad del producto a llevar")
	precioBase = pedirDatoNumRango("Ingrese el precio base del producto",precioMin,precioMax)
	
	subTotal = precioBase*cantidad
	iva = subTotal*0.16
	montoTotal = subTotal+iva
	
	Mostrar "El subtotal (sin iva) es: " subTotal " Bs."
	Mostrar "El iva a pagar es: " iva " Bs."
	Mostrar "El monto total a pagar es: " montoTotal " Bs."
FinAlgoritmo
