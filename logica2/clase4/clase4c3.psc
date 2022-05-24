Algoritmo clase4c3
	Dimension nums[10]
	Definir nums, num Como Entero
	Definir i,j, k Como Entero
	
	i = 1
	k = 1
	
	Mientras (i<=10)
		nums[i] = Aleatorio(-20,20)
		i=i+1
	FinMientras
	
	Para j=1 Hasta 10
		si nums[j] > 0
			Mostrar "El valor en la " j "° posición es: " nums[j]
		FinSi
	FinPara
	
	Para Cada num de nums
		si num < 0
			Mostrar "El valor en la " k "° posición es: " num
		FinSi
		k = k+1
	FinPara
	
FinAlgoritmo
