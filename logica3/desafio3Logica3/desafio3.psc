SubAlgoritmo pedirDatos(acumAprobados Por Referencia, acumReprobados Por Referencia, contAprobados Por Referencia, contReprobados Por Referencia,cantAlum Por Referencia)
	Definir nom Como Caracter
	Definir not Como Real
	Definir notaMayor, notaMenor Como Real
	Definir auxMayor, auxMenor, auxNota Como Real
	Definir auxNombre,nombreMayor,nombreMenor Como Caracter
	auxMayor = 100
	auxMenor = 0
	contAprobados = 0
	contReprobados = 0
	acumAprobados = 0
	acumReprobados = 0
	Mostrar "Ingrese la cantidad de alumnos: " Sin Saltar
	Leer cantAlum
	Para i = 1 Hasta cantAlum
		Mostrar "Ingrese el nombre del alumno: " Sin Saltar
		Leer nom
		Mostrar "Ingrese la nota del alumno: " Sin Saltar
		Leer not
		si not > auxMayor
			auxMayor = not
			nombreMayor = nom
		FinSi
		si not < auxMenor
			auxMenor = not
			nombreMenor = nom
		FinSi
		si not >= 80
			acumAprobados = acumAprobados + not
			contAprobados = contAprobados+1
		SiNo
			acumReprobados = acumReprobados + not
			contReprobados = contReprobados+1
		FinSi
	FinPara
FinSubAlgoritmo

SubAlgoritmo calcularProm(acum,cont,promedio Por Referencia)
	si cont <> 0
		promedio = acum / cont
	SiNo
		Mostrar "No se puede calcular con un contador igual a 0"
		promedio = 0
	FinSi
FinSubAlgoritmo

SubAlgoritmo calcularPorc(contEsp,contGen,porcentaje Por Referencia)
	si contGen <> 0
		porcentaje = (contEsp / contGen) * 100
	SiNo
		Mostrar "No se puede calcular con un contador igual a 0"
		porcentaje = 0
	FinSi
FinSubAlgoritmo

SubAlgoritmo menu(acumAprobados,acumReprobados,contAprobados,contReprobados,cantAlum, porcentaje, promedio)
	Definir promedioAprobados, promedioReprobados, porcAprobados Como Real
	Definir opc Como Entero
	Repetir
		Mostrar ""
		Mostrar "Menú de control de estudiantes"
		Mostrar "1 - Ingresar datos"
		Mostrar "2 - Mostrar los datos de los alumnos aprobados y el promedio de los aprobados"
		mostrar "3 - Mostrar Porcentaje de aprobados"
		Mostrar "4 - Salir"
		Leer opc
		Segun opc Hacer
			1:
				pedirDatos(acumAprobados,acumReprobados,contAprobados,contReprobados,cantAlum)
			2:
				Mostrar ""
				Mostrar "La cantidad de alumnos aprobados fue: " contAprobados
				calcularProm(acumAprobados,contAprobados,promedioAprobados)
				calcularProm(acumReprobados,contReprobados,promedioReprobados)
				Mostrar "El promedio de los alumnos aprobados es de: " promedioAprobados
				Mostrar "El promedio de los alumnos reprobados es de: " promedioReprobados

			3:
				calcularPorc(contAprobados,cantAlum,porcAprobados)
				Mostrar ""
				Mostrar "El porcentaje de aprobados es de: " porcAprobados
			4:
				
			De Otro Modo:
				Mostrar "Por favor, ingrese una opción correcta, presione una tecla para reiniciar..."
				Esperar Tecla
				Limpiar Pantalla
		Fin Segun
	Hasta Que opc = 4
FinSubAlgoritmo

Algoritmo desafio3
	menu(acumAprobados,acumReprobados,cantAprobados,cantReprobados,cantAlumnos,promedio,porcentaje)
FinAlgoritmo
