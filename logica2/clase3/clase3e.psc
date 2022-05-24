Algoritmo clase3e
	Definir nombre, talla Como Caracter
	Definir cantidad, montoDesc, auxDesc, montoTotal, precio, subtotal Como Real
	Definir equivocado, cantidadBuena Como Logico
	
	Mostrar "Ingrese su nombre: " Sin Saltar
	Leer nombre
	Mostrar "Ingrese la cantidad a comprar: " Sin Saltar
	Leer cantidad
	Mostrar "Ingrese la talla a comprar (S/M/L/XL): " Sin Saltar
	Leer talla
	
	talla = Mayusculas(talla)
	equivocado = Falso
	cantidadBuena = cantidad > 0
	
	Segun talla Hacer
		"S":
			precio = 50000
		"M":
			precio = 55000
		"L":
			precio = 60000
		"XL":
			precio = 65000
		De Otro Modo:
			Mostrar "Ingrese una talla válida"
			equivocado = Verdadero
	Fin Segun
	
	si ~equivocado y cantidadBuena
		subtotal = precio*cantidad
		si cantidad >= 6 y cantidad < 12
			auxDesc = 5
		SiNo
			si cantidad >= 12 y cantidad < 24
				auxDesc = 10
			SiNo
				si cantidad > 24
					auxDesc = 15
				FinSi
			FinSi
		FinSi
		montoDesc = subtotal * auxDesc/100
		montoTotal = subtotal - montoDesc
		
		Mostrar  "Sr(a): " nombre
		Mostrar "Usted ha indicado: " cantidad " franelas, con talla " talla
		Mostrar "El subtotal a pagar es: " subtotal
		Mostrar "Se le aplica un descuento del: " auxDesc "%"
		Mostrar "El monto del descuento: " montoDesc
		Mostrar "El monto final a pagar es de: " montoTotal
	SiNo
		Mostrar "Debe iniciar de nuevo..."
	finsi
	
FinAlgoritmo
