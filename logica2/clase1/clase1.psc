Algoritmo clase1
	Definir nota1, nota2, nota3, nota_final Como Real
	Mostrar "Ingrese las notas del primer lapso: " Sin Saltar
	Leer nota1
	Mostrar "Ingrese las notas del segundo lapso: " Sin Saltar
	Leer nota2
	Mostrar "Ingrese las notas del tercer lapso: " Sin Saltar
	Leer nota3
	nota_final = (nota1+nota2+nota3)/3
	Mostrar ""
	Mostrar "La nota final del estudiante es: " nota_final
	Mostrar ""
	si nota_final >= 10 Entonces
		Mostrar "El alumno aprobó el curso"
	FinSi
	si nota_final < 10 Entonces
		Mostrar "El alumno reprobó el curso"
	FinSi
	si nota_final >= 19 Entonces
		Mostrar "¡Felicidades por su esfuerzo!"
	FinSi
	si nota_final <= 7 Entonces
		Mostrar "Le recomendamos esforzarse más la próxima vez..."
	FinSi
FinAlgoritmo
