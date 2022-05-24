Algoritmo desafio4
	Definir tam_patio,larg_patio, num_part, ganador_sorteo, logNatural_nro Como Real
	Mostrar "Bienvenido al programa de cálculos"
	Mostrar "Presione una tecla para continuar..."
	Esperar Tecla
	tam_patio = 225^2
	
	larg_patio = raiz(tam_patio)
	Mostrar "Al medir 225 metros cuadrados, el largo del patio es de: " larg_patio
	Mostrar ""
	Mostrar "Por favor introduzca el número de participantes para la rifa: " Sin Saltar
	Leer num_part
	ganador_sorteo = Aleatorio(1,num_part)
	Mostrar "De " num_part " participantes, el ganador fue el nro: " ganador_sorteo
	Mostrar ""
	Mostrar "El logaritmo natural del número ganador del sorteo es: " ln(ganador_sorteo)
	logNatural_nro = ln(ganador_sorteo)
	Mostrar ""
	Mostrar "La parte entera del logaritmo natural anterior es: " trunc(logNatural_nro)
	Mostrar ""
	Mostrar "El entero más cercano del logaritmo natural del número ganador del sorteo es: " redon(logNatural_nro)
	Mostrar ""
	
FinAlgoritmo
