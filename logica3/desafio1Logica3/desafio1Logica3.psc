SubAlgoritmo solicitarInfo(mensaje, dato Por Referencia)
	Mostrar mensaje Sin Saltar
	Leer dato
FinSubAlgoritmo

SubAlgoritmo  calcularPromedio(v1,v2,v3,v4, prom Por Referencia)
	prom = (v1+v2+v3+v4)/4
FinSubAlgoritmo

SubAlgoritmo  calcularGanancia(porc, prom, ganancy Por Referencia)
	ganancy = prom * porc
FinSubAlgoritmo

SubAlgoritmo mostrarInfo(mensaje, dato)
	Mostrar mensaje "" dato
FinSubAlgoritmo

Algoritmo desafio1Logica3
	Definir ventaTotal1, ventaTotal2, ventaTotal3, ventaTotal4, promedio, ganancia, porcentaje Como Real
	
	porcentaje = 0.30
	
	//Se le solicitan las ventas totales al usuario a través del módulo solicitarInfo
	solicitarInfo("Por favor ingrese el valor de las ventas totales de la primera sucursal: ", ventaTotal1)
	solicitarInfo("Por favor ingrese el valor de las ventas totales de la segunda sucursal: ", ventaTotal2)
	solicitarInfo("Por favor ingrese el valor de las ventas totales de la tercera sucursal: ", ventaTotal3)
	solicitarInfo("Por favor ingrese el valor de las ventas totales de la cuarta sucursal: ", ventaTotal4)
	
	//Se calcula el promedio de las ventas a través del módulo calcularPromedio
	calcularPromedio(ventaTotal1, ventaTotal2, ventaTotal3, ventaTotal4, promedio)
	
	//Se calcula la ganancia de las ventas a través del módulo calcularGanancia
	calcularGanancia(porcentaje, promedio, ganancia)
	
	//Se muestra el promedio de las ventas y la ganancia con el módulo mostrarInfo
	mostrarInfo("El promedio de las ventas fue de:",promedio)
	mostrarInfo("la ganancia de las ventas fue de:",ganancia)
	
FinAlgoritmo
