Algoritmo clase4c2
	Definir notas, nota Como Real
	Definir j, i Como Entero
	Definir numVal Como Logico
	Dimension notas[3] 
	
	j = 1
	numVal = Falso
	
	Para i=1 Hasta 3
		Mostrar "Ingrese la " i "° nota: " Sin Saltar
		Leer notas[i]
		si notas[i] >= 0 y notas[i] <= 100
			numVal = Verdadero
		SiNo
			Mostrar "Ingreso una nota inválida (Negativa o mayor a 100)"
		FinSi
	FinPara
	
	si numVal
		Para Cada nota de notas
		Mostrar "La " j "° nota es: " nota
		j = j+1
	    FinPara
	FinSi

FinAlgoritmo
