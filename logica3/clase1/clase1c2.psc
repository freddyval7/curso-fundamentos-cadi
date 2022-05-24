SubAlgoritmo pedirInformacion(mensaje, dato Por Referencia)
	Mostrar mensaje Sin Saltar
	Leer dato
FinSubAlgoritmo

SubAlgoritmo mostrarInfo(mensaje, variab Por Referencia)
	Mostrar mensaje " " variab
FinSubAlgoritmo

SubAlgoritmo calcularComisionPorCantidad(cant, comCant Por Referencia)
	comCant = cant * 300000
FinSubAlgoritmo

SubProceso calcularComisionVentas(ventas, comVenta Por Referencia)
	comVenta = ventas * 18/100
FinSubProceso

SubAlgoritmo calcularSalario(sb, cc, cv, salario Por Referencia)
	salario = sb + cc + cv
FinSubAlgoritmo

Algoritmo clase1c2
	//	Definiciones de variables
	Definir sueldoBase, ventas, comisionCantidad, comisionVentas, sueldo Como Real
	Definir mensaje1, nombre, mensaje2, mensaje3 Como Caracter
	Definir cantidad como entero
	
	//Inicializacion de variables
	sueldoBase = 120000
	//Con el uso de modulos voy a solicitar 
	//los datos necesarios
	
	//Solicito el nombre
	pedirInformacion("Ingrese el nombre del empleado:", nombre)
	//Solicito la cantidad de autos vendidos
	pedirInformacion("Ingrese la cantidad de autos vendidos:", cantidad)
	//Solicito el monto de venta
	pedirInformacion("Ingrese el monto total de venta:" , ventas)
	
	//Uso el modulo para calcular la comision por cantidad
	calcularComisionPorCantidad(cantidad, comisionCantidad)
	//Uso el modulo para calcular la comision por ventas
	calcularComisionVentas(ventas, comisionVentas)
	//Uso el modulo para calcular el salario
	calcularSalario(sueldoBase, comisionCantidad, comisionVentas, sueldo)
	
	//Para mostrar la informacion uso el modulo
	Mostrar ""
	mostrarInfo("El empleado", nombre)
	mostrarInfo("Tiene un sueldo total de:", sueldo)
	
FinAlgoritmo 