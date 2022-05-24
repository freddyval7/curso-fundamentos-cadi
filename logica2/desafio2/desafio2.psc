Algoritmo desafio2
	Definir v, p, g, cantidad, montoFinal, montoIni, descuento, descuentoAux Como Real
	Definir tipoBoleto Como Caracter
	Definir tipoError Como Logico
	Mostrar "Bienvenido a la compra de boletos de nuestra discoteca!"
	Mostrar "Presione una tecla para continuar..."
	Esperar Tecla
	Limpiar Pantalla
	Mostrar "Ingrese el tipo de boleto a comprar (V/P/G): "Sin Saltar
	Leer tipoBoleto
	Mostrar "Ingrese la cantidad deseada: " Sin Saltar
	Leer cantidad
	
	tipoBoleto = Minusculas(tipoBoleto)
	v = 500000*cantidad
	p = 300000*cantidad
	g = 150000*cantidad
	tipoError = Falso
	
	si cantidad > 0 Entonces 
		si tipoBoleto = "v" Entonces
			montoIni = v
		SiNo
			si tipoBoleto = "p" Entonces
				montoIni = p
			SiNo
				si tipoBoleto = "g" Entonces
					montoIni = g
				SiNo
					Mostrar "No ingresó un boleto válido"
					tipoError = Verdadero
				FinSi
			FinSi
		FinSi
	  si ~tipoError
		si montoIni <= 400000 Entonces
			descuento = montoIni*0.05
			descuentoAux = 5
			montoFinal = montoIni - descuento
		SiNo
			si montoIni >= 1400000 y montoIni <= 1800000 Entonces
				descuento = montoIni*0.07
				descuentoAux = 7
				montoFinal = montoIni - descuento
			SiNo
				si montoIni >= 2400000 Entonces
					descuento = montoIni*0.1
					descuentoAux = 10
					montoFinal = montoIni - descuento
				SiNo
					descuento = montoIni*0.13
					descuentoAux = 13
					montoFinal = montoIni - descuento
				FinSi
			FinSi
		FinSi
		Mostrar ""
		Mostrar "El tipo de boleto que escogió fue: [" tipoBoleto "]"
		Mostrar "La cantidad fue de: " cantidad " boletos"
		Mostrar "El monto inicial fue de: " montoIni
		Mostrar "El descuento fue de: " descuentoAux "%"
		Mostrar "El monto del descuento fue de: " descuento
		Mostrar "El monto total a pagar, con descuento aplicado es de: " montoFinal
	  FinSi
	SiNo
		Mostrar "No ingresó una cantidad válida"
	FinSi
	
FinAlgoritmo
