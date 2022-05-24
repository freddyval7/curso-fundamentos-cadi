Algoritmo clase2
	Definir precio, cantidad, subtotal, subtotal_desc, descuentoAux, montoIva, montoFinal Como Real
	Mostrar "Ingrese el precio del producto: " Sin Saltar
	Leer precio
	Mostrar "Ingrese la cantidad a llevar: " Sin Saltar
	Leer cantidad
	
	subtotal = precio*cantidad
	
	si subtotal > 50000 Entonces
		descuentoAux = 5
		subtotal_desc = subtotal-(subtotal*0.05)
	SiNo
		descuentoAux = 2
		subtotal_desc = subtotal-(subtotal*0.02) //Recordar que (subtotal*0.02) = descuento, si descuento=0.02
	FinSi
	
	montoIva = subtotal_desc * 0.16
	montoFinal = montoIva + subtotal_desc
	
	Mostrar "El subtotal es de: " subtotal " Bs"
	Mostrar "El descuento es: " descuentoAux "%"
	Mostrar "El monto con descuento es: " subtotal_desc " Bs" 
	Mostrar "El monto del IVA (16%) es: " montoIva " Bs"
	Mostrar "El monto total a pagar: " montoFinal " Bs"
	
FinAlgoritmo
