Algoritmo clase2b
	Definir nombre, tipoPantalon Como Caracter
	Definir monto, cantidad Como Real
	Mostrar "Ingrese su Nombre: " Sin Saltar
	Leer nombre
	Mostrar "Ingrese el tipo de pantal�n (A,B,C): " Sin Saltar
	Leer tipoPantalon
	Mostrar "Ingrese la cantidad a llevar: " Sin Saltar
	Leer cantidad
	si cantidad > 0 Entonces
		si Minusculas(tipoPantalon) = "a" Entonces
			monto = 80000*cantidad
		SiNo
			si Minusculas(tipoPantalon) = "b" Entonces
				monto = 105000*cantidad
			SiNo
				si Minusculas(tipoPantalon) = "c" Entonces
					monto = 25000*cantidad
				SiNo
					Mostrar "No ingres� un tipo de pantal�n v�lido"
				FinSi
			FinSi
		FinSi
		Mostrar ""
		Mostrar "Su nombre es: " nombre
		Mostrar "El tipo de pantal�n que escogio es: " tipoPantalon
		Mostrar "La cantidad a llevar es: " cantidad
		Mostrar "El monto a pagar es: " monto
	sino
		Mostrar "La cantidad no es positiva"
	FinSi
	
FinAlgoritmo
