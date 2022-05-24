Algoritmo desafio3Obj4
	Definir precio, iva, montoNeto, descuento, auxDesc, montoTotal Como Real
	Definir precioMalo Como Logico
	
	//Objetivo 4
	Mostrar "Ingrese el precio del producto: " Sin Saltar
	Leer precio
	iva = precio*0.16
	montoNeto = precio + iva
	precioMalo = precio <= 0
	
	si ~precioMalo
		si montoNeto > 500000
			auxDesc = 5
			descuento = montoNeto*0.05
			montoTotal = montoNeto - descuento
		SiNo
			auxDesc = 2
			descuento = montoNeto*0.02
			montoTotal = montoNeto - descuento
		FinSi
		Mostrar ""
		Mostrar "El monto neto (Precio + IVA) es de: " montoNeto " Bs"
		Mostrar "El monto del IVA (16%) es de: " iva " Bs"
		Mostrar "El monto del descuento (" auxDesc "%) es de: " descuento " Bs"
		Mostrar "El monto total a pagar es de: " montoTotal " Bs"
	SiNo
		Mostrar "Ingresó un monto incorrecto, debe iniciar de nuevo..."
	FinSi
FinAlgoritmo
