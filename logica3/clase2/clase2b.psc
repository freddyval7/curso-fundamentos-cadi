SubAlgoritmo pedirInformacion(mensaje, dato Por Referencia)
	Mostrar mensaje Sin Saltar
	Leer dato
FinSubAlgoritmo

SubAlgoritmo calcularComisAuto(cantidadAuto, comisAuto Por Referencia)
	Definir com como real
	com = 300000
	comisAuto = cantidadAuto*com
FinSubAlgoritmo

SubProceso calcularComisPorcentaje(mont, comisPorc Por Referencia)
	Definir porcentaje como real
	porcentaje = 0.18
	comisPorc = mont * porcentaje
FinSubProceso

SubAlgoritmo calcularSueldo(cantidadAuto,mont,sueldTotal Por Referencia)
	Definir sueldBase,cc,cm como real
	sueldBase = 120000 
	
	calcularComisAuto(cantidadAuto,cc)
	calcularComisPorcentaje(mont,cm)
	
	sueldTotal=sueldBase+cc+cm
FinSubAlgoritmo

SubAlgoritmo mostrarInfo(mensaje, variab)
	Mostrar mensaje " " variab
FinSubAlgoritmo

Algoritmo clase2b
	Definir nombre Como Caracter
	Definir numAutos, montoVentas, sueldoTotal como Real
	
	pedirInformacion("Ingrese el nombre:",nombre)
	pedirInformacion("Ingrese la cantidad de autos vendidos:",numAutos)
	pedirInformacion("Ingrese el monto total de las ventas:",montoVentas)
	
	calcularSueldo(numAutos,montoVentas,sueldoTotal)
	
	mostrarInfo("El nombre ingresado es:",nombre)
	mostrarInfo("Con un sueldo total de:",sueldoTotal)
	
FinAlgoritmo
