Funcion varReturn = calcularCostos(var, porcentaje)
	Definir varReturn Como Real
	varReturn = var * porcentaje / 100
FinFuncion

Algoritmo clase3a
	Definir precioFabrica, ganancia, comisionVendedor, precioBase Como Real
	Definir iva, precioVenta Como Real
	
	Mostrar "Introduzca el precio de f�brica: " Sin Saltar
	leer precioFabrica
	
	ganancia = calcularCostos(precioFabrica,25)
	comisionVendedor = calcularCostos(precioFabrica,20)
	precioBase = precioFabrica + ganancia + comisionVendedor
	iva = calcularCostos(precioBase,15)
	precioVenta = precioBase + iva
	
	Mostrar "La ganancia del art�culo es de: " ganancia " Bs."
	Mostrar "La comisi�n para el vendedor es de: " comisionVendedor " Bs."
	Mostrar "El precio base del art�culo es: " precioBase " Bs."
	Mostrar "El iva del art�culo es: " iva " Bs."
	Mostrar "El precio de venta es de: " precioVenta " Bs."
FinAlgoritmo
