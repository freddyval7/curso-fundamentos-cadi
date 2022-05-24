SubAlgoritmo pedirInformacion(mensaje, dato Por Referencia)
	Mostrar mensaje Sin Saltar
	Leer dato
FinSubAlgoritmo

SubAlgoritmo mostrarInfo(mensaje, variab)
	Mostrar mensaje " " variab
FinSubAlgoritmo

SubAlgoritmo mostrarMensaje(mensaje)
	Mostrar mensaje
FinSubAlgoritmo

Algoritmo desafio2Logica3
	Definir opcMenu, edad Como Entero
	Definir nombre, sexo Como Caracter
	
	Repetir
		Mostrar ""
		Mostrar "Menú de control de estudiantes"
		Mostrar "1 - Ingresar datos"
		Mostrar "2 - Mostrar los datos de los alumnos de la sección"
		mostrar "3 - Mostrar el porcentaje de aprobados"
		Mostrar "4 - Salir"
		Leer opcMenu
		Segun opcMenu Hacer
			1:
				pedirInformacion("Ingrese el nombre del alumno",nombre)
				pedirInformacion("Ingrese el sexo del alumno",sexo)
				pedirInformacion("Ingrese la edad del alumno",edad)
			2:
				mostrarInfo("El nombre del alumno es:",nombre)
				mostrarInfo("El sexo del alumno es:",sexo)
				mostrarInfo("La edad del alumno es:",edad)
				Esperar 2 Segundos
			3:
				mostrarMensaje("El apartado para registrar notas está aún en proceso...")
				Esperar 2 Segundos
			4:
				mostrarMensaje("El apartado para mostrar el listado está aún en proceso...")
				Esperar 2 Segundos
			5:
			De Otro Modo:
				Mostrar "Se ha equivocado, ingrese una opción correcta, para continuar presione una tecla..."
				Esperar Tecla
		Fin Segun
	Hasta Que opcMenu = 5
	
FinAlgoritmo
