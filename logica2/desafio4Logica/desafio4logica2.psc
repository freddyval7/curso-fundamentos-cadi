Algoritmo desafio4logica2
	Definir materia, nombres, n, m Como Caracter
	Definir notaPracticas, notaTeorico, aprobados, reprobados Como Real
	Definir i, j, k Como Entero
	Definir val Como Logico
	Dimension m[3]
	Dimension n[3]
	Dimension nombres[3]
	Dimension notaPracticas[3]
	Dimension notaTeorico[3]
	Dimension aprobados[3]
	Dimension reprobados[3]

	
	Mostrar "Ingrese la materia: " Sin Saltar
	Leer materia
	
	Para i=1 Hasta 3
		Mostrar "Ingrese el nombre del " i "° alumno: " Sin Saltar
		Leer nombres[i]
		Repetir
			Mostrar "Ingrese el promedio de las notas prácticas: " Sin Saltar
			Leer notaPracticas[i]
			Mostrar "Ingrese la nota teórica: " Sin Saltar
			leer notaTeorico[i]
			val = (notaPracticas[i] >= 0 y notaPracticas[i] <= 100) o (notaTeorico[i] >= 0 y notaTeorico[i] <= 100)
			si ~val
				Mostrar "Ingresó una nota incorrecta"
				Mostrar ""
			FinSi
		Hasta Que val
		Mostrar ""
	FinPara
	
	si val
		Para j=1 Hasta 3
			si (notaPracticas[j] >= 80 y notaTeorico[j] >= 80)
				aprobados[j] = j 
				n[j] = nombres[j]
			SiNo
				reprobados[j] = j
				m[j] = nombres[j]
			FinSi
			Mostrar "Alumnos aprobados: "
			Mostrar "El " aprobados[j] "° alumno, cuyo nombre es: " n[j] ", fue aprobado"
			Mostrar ""
			Mostrar "Alumnos reprobados: "
			Mostrar "El " reprobados[j] "° alumno, cuyo nombre es: " m[j] ", fue reprobado"
		FinPara
	FinSi
	
FinAlgoritmo
