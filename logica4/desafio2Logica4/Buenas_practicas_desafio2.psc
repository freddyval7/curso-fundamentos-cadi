Subproceso leer_datos(nomb_vend Por Referencia,cant_autVend Por Referencia,total_ventas Por Referencia)
	Mostrar "¿Nombre del Empleado?: " Sin Saltar
	Leer nomb_vend
	Mostrar "¿Cantidad de autos vendidos?: " Sin Saltar
	Leer cant_autVend
	Mostrar "¿Monto total de ventas?: " Sin Saltar
	Leer total_ventas 
FinSubProceso

Funcion resultMultip<-func_multip_2Fact(Factor1,Factor2)
	resultMultip = Factor1 * Factor2
FinFuncion

Subproceso det_com(cantAV,montoTotVentas,com_total Por Referencia)
	com_autosVendidos = Func_Multip_2Fact(cantAV,100000)
	com_totalVtas = func_multip_2Fact(montoTotVentas,0.18)
	com_Total = com_AV + com_totalVtas
FinSubProceso

SubProceso calc_salario(com_total,salNeto Por Referencia)
	salNeto = 700000 + com_total
FinSubProceso

SubProceso mostrar_salidas(nomb_vend,salNeto)
	Mostrar nomb_vend "debe percibir como salario neto " salNeto " Bs."
FinSubProceso

Algoritmo sin_titulo
	leer_datos(nombVend,cantAV,mtoTVtas)
	det_com(cantAV,mtoTVtas,com_total)
	calc_salario(com_total,salNeto)
	mostrar_salidas(nombVend,salNeto)	
FinAlgoritmo