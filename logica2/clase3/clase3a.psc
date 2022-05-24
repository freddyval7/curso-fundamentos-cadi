Algoritmo clase3a
	Definir sueldo_base, monto_mensualVen, bonoTercera, comision_venta, auxComVenta, pagoDelMes Como Real
	Definir edad Como Entero
	Definir sexo Como Caracter
	
	bonoTercera = 40000
	
	Mostrar "Ingrese el monto del sueldo base: " Sin Saltar
	Leer sueldo_base
	Mostrar "Ingrese el monto mensual de las ventas del vendedor: " Sin Saltar
	Leer monto_mensualVen
	Mostrar "Por favor ingrese la edad del vendedor: " Sin Saltar
	leer edad
	Mostrar "Ingrese el género del vendedor(H/M): " Sin Saltar
	Leer sexo
	
	sexo = Mayusculas(sexo)
	
	si monto_mensualVen > 0 y monto_mensualVen < 75000 Entonces
		comision_venta = 5
		auxComVenta = 0.05
	SiNo
		si monto_mensualVen >= 90000 y monto_mensualVen < 200000 Entonces
			comision_venta = 7
			auxComVenta = 0.07
		SiNo
			si monto_mensualVen >= 300000 y monto_mensualVen < 1000000 entonces
			comision_venta = 8
			auxComVenta = 0.08
		SiNo
			si monto_mensualVen >= 1500000 Entonces
				comision_venta = 10
				auxComVenta = 0.1
			SiNo
				comision_venta = 6
				auxComVenta = 0.06
			FinSi
		FinSi
	FinSi
  FinSi
  
    si (sexo = "H" y edad >= 60) o (sexo = "M" y edad >= 55) Entonces
		bonoTercera = 40000
	SiNo
		bonoTercera = 0
	FinSi
	
	pagoDelMes = sueldo_base + (monto_mensualVen*auxComVenta) + bonoTercera
	
	Mostrar ""
	Mostrar "En base a las ventas del vendedor que fueron: " monto_mensualVen
	Mostrar "El vendedor recibirá un bono porcentual sobre ese monto del: " comision_venta "%"
	Mostrar "Equivalente a este valor: " monto_mensualVen*auxComVenta " Bs"
	Mostrar "El vendedor tiene " edad " años, y su sexo es (H:Masculino, M:Femenino): " sexo
	Mostrar "Por ello recibe un bono de tercera edad por: " bonoTercera " bs"
	Mostrar "El sueldo base del vendedor es: " sueldo_base " bs"
	Mostrar "El total a pagar al vendedor este mes es: " sueldo_base " + " monto_mensualVen*auxComVenta " + " bonoTercera
	Mostrar "Siendo un total de : " pagoDelMes " bs"
	
	
FinAlgoritmo
