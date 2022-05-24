Funcion varReturn = calcularCostos(var, porcentaje)
	Definir varReturn Como Real
	varReturn = var * porcentaje / 100
FinFuncion

Algoritmo clase3a
	Definir precioFabrica, ganancia, comisionVendedor, precioBase Como Real
	Definir iva, precioVenta Como Real
	
	Mostrar "Introduzca el precio de fábrica: " Sin Saltar
	leer precioFabrica
	
	ganancia = calcularCostos(precioFabrica,25)
	comisionVendedor = calcularCostos(precioFabrica,20)
	precioBase = precioFabrica + ganancia + comisionVendedor
	iva = calcularCostos(precioBase,15)
	precioVenta = precioBase + iva
	
	Mostrar "La ganancia del artículo es de: " ganancia " Bs."
	Mostrar "La comisión para el vendedor es de: " comisionVendedor " Bs."
	Mostrar "El precio base del artículo es: " precioBase " Bs."
	Mostrar "El iva del artículo es: " iva " Bs."
	Mostrar "El precio de venta es de: " precioVenta " Bs."
FinAlgoritmo
