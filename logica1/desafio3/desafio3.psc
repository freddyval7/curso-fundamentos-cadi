Algoritmo desafio3
	//Definiciones
	Definir nombre Como Caracter
	Definir semana1, semana2, semana3, semana4 Como Entero
	Definir salario_base, promedio, bono, salario_subTotal, prestaciones, salario_total Como Real
	//Entradas
	Mostrar "Bienvenido al programa de cálculo de pago correcto de la empresa"
	Mostrar "Presione una tecla para continuar"
	Esperar Tecla
	Limpiar Pantalla
	Mostrar "Ingrese el nombre del empleado: " Sin Saltar
	Leer nombre
	Mostrar "Ingrese las ventas de la semana 1: " Sin Saltar
	Leer semana1
	Mostrar "Ingrese las ventas de la semana 2: " Sin Saltar
	Leer semana2
	Mostrar "Ingrese las ventas de la semana 3: " Sin Saltar
	Leer semana3
	Mostrar "Ingrese las ventas de la semana 4: " Sin Saltar
	Leer semana4
	Mostrar "Ingrese el salario base del empleado: " Sin Saltar
	Leer salario_base
	//Procesos
	promedio = (semana1+semana2+semana3+semana4)/4
	bono = promedio*0.05
	salario_subTotal = salario_base + bono
	prestaciones = salario_subTotal*0.03
	salario_total = salario_subTotal - prestaciones
	//Salidas
	Mostrar ""
	Mostrar "El nombre del empleado es: " nombre
	Mostrar "Su promedio de ventas es de: " promedio
	Mostrar "El salario base del mismo es de: " salario_base
	Mostrar "El monto del bono al empleado es de: " bono
	Mostrar "El monto del subtotal de su salario es de: " salario_subTotal
	Mostrar "El monto de las prestaciones sociales es de: " prestaciones
	Mostrar "El monto total a cobrar por el empleado es de: " salario_total
	
FinAlgoritmo
