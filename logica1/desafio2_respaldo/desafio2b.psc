Algoritmo desafio2b
	Definir radio, radio1, radio2, altura Como Real
	
	//volumen_cono = 1/3 * 3.1415 * radio^2 * altura
	//volumen_troncoCono = 1/3 * 3.1415 * altura*(radio1^2 + radio2^2 + radio1*radio2)
	//volumen_esfera = 4/3 * 3.1415 * radio^3
	
	Mostrar "Bienvenido al programa de c�lculo de vol�menes"
	Mostrar ""
	Mostrar "Presione una tecla para continuar: "
	Esperar Tecla
	//Vol�men del cono
	Mostrar  "Ingrese el radio y altura del cono: " Sin Saltar
	Leer radio
	Leer altura
	Mostrar  "El valor del volumen del cono es: " 1/3 * 3.1415 * radio^2 * altura
	Mostrar  ""
	//Vol�men del tronco de cono
	Mostrar "Introduzca el radio 1 y 2 del tronco de cono: " Sin Saltar
	Leer radio1
	Leer radio2
	Mostrar "Introduzca la altura del tronco de cono: " Sin Saltar
	Leer altura
	Mostrar "El vol�men del tronco de cono es: " 1/3 * 3.1415 * altura*(radio1^2 + radio2^2 + radio1*radio2)
	mostrar ""
	//Vol�men de la esfera
	Mostrar "Introduzca el radio de la esfera: " Sin Saltar
	Leer radio
	Mostrar "El vol�men de la esfera es: " 4/3 * 3.1415 * radio^3
	Mostrar ""
	Esperar 5 Segundos
	Mostrar "El programa ha finalizado"
	Mostrar "Presione una tecla para finalizar"
	Esperar Tecla
	
FinAlgoritmo
