Algoritmo clase4a
	Definir precio_fabrica, precio_base, iva, ganancia, comision, precio_venta Como Real
	
	Mostrar "Este programa calcula el precio de un producto"
	Mostrar "Ingrese el precio de fábrica: " Sin Saltar
	Leer precio_fabrica
	
	ganancia = precio_fabrica*0.25
	comision = precio_fabrica*0.2
	precio_base = precio_fabrica + ganancia + comision
	iva = precio_base*0.15
	precio_venta = precio_base + iva
	
	Mostrar "El precio de fabrica es: " precio_fabrica
	Mostrar "La ganancia es de: " ganancia
	Mostrar "La comision es: " comision
	Mostrar "El precio base es: " precio_base
	Mostrar "El IVA es: " IVA
	Mostrar "El precio de venta es: " precio_venta
	
FinAlgoritmo
