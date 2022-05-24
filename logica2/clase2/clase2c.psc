Algoritmo clase2c
	Definir edad, costoEntrada, descuento, descuentoAux  Como real
	Definir estudiante Como logico
	
	Mostrar "Ingrese la edad: " Sin Saltar
	leer edad
	Mostrar "Es estudiante? (V/F): " Sin Saltar
	Leer estudiante
	
	costoEntrada = 10000
	
	si edad > 0 Entonces
		si edad <= 2 Entonces
			descuento = 100
			costoEntrada = 0
		SiNo
			si edad <= 5
				si estudiante
					descuento = 25
					descuentoAux = costoEntrada * 0.25
					costoEntrada = costoEntrada - descuentoAux
				SiNo
					descuento = 50
					descuentoAux = costoEntrada * 0.50
					costoEntrada = costoEntrada - descuentoAux
				FinSi
			SiNo
				si edad <= 10
					si estudiante
						descuento = 25
						descuentoAux = costoEntrada * 0.25
						costoEntrada = costoEntrada - descuentoAux
					SiNo
						descuento = 20
						descuentoAux = costoEntrada * 0.25
						costoEntrada = costoEntrada - descuentoAux
					FinSi
				SiNo
					si edad >= 55
							descuento = 30
							descuentoAux = costoEntrada * 0.30
							costoEntrada = costoEntrada - descuentoAux
						FinSi
					FinSi
				FinSi
			FinSi
			Mostrar "El descuento aplicado fue de: " descuento "%"
			Mostrar "El monto con descuento es: " descuentoAux
			Mostrar "El costo de la entrada es: " costoEntrada
	FinSi

	
	
FinAlgoritmo
