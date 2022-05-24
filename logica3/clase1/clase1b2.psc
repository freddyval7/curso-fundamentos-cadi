SubAlgoritmo pedirInformacion(mensaje, dato)
	Mostrar mensaje Sin Saltar
	Leer dato
FinSubAlgoritmo

SubAlgoritmo calcularComisionPorCantidad(cant,comCant)
	comisionCant = cant*300000
FinSubAlgoritmo

SubProceso calcularComisionVentas(ventas, comVentas)
	comVentas = ventas*0.18
FinSubProceso

SubProceso calcularSalario(sb,cc,cv,salario)
	salario = sb+cc+cv
FinSubProceso

SubAlgoritmo mostrarSalario(name,salary)
	Mostrar "El empleado" name
	Mostrar "Su sueldo es: " salary
FinSubAlgoritmo

Algoritmo clase1b2
	Definir sueldoBase, comisionCantidad,comisionVentas, sueldo Como Real
	Definir mensaje1, mensaje2, mensaje3, nombre Como Caracter
	Definir cantidad Como Entero
	Definir ventas Como Real
	
	sueldoBase =  120000
	
	//Con el uso de modulo se solicitan los datos necesarios
	
	//Solicito el nombre
	mensaje1 = "Ingrese el nombre del empleado: "
	pedirInformacion(mensaje1, nombre)
	
	//Solicito la cantidad de autos vendidos
	mensaje2 = "Ingrese la cantidad de autos vendidos: "
	pedirInformacion(mensaje2, cantidad)
	
	//Solicito el monto de ventas
	mensaje3 = "Ingrese el monto total de ventas: "
	pedirInformacion(mensaje3, ventas)
	
	//Uso del modulo para calcular la comision por cantidad
	calcularComisionPorCantidad(cantidad, comisionCantidad)
	
	//Uso del modulo para calcular la comision por ventas
	calcularComisionVentas(ventas, comisionVentas)
	
	//Uso el modulo para calcular el salario 
	calcularSalario(sueldoBase, comisionCantidad, comisionVentas, sueldo)
	
	//Para mostrar la informacion uso el modulo de mostrar salario
	mostrarSalario(nombre, sueldo)
FinAlgoritmo
