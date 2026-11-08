Algoritmo cajero
	Definir monto, total, contador Como Entero
	total <- 0
	contador <- 0
		
	Escribir "Ingrese el monto a retirar (0 para terminar):"
	Leer monto
		
	Mientras monto <> 0 Hacer
		total <- total + monto
		contador <- contador + 1
			
		Escribir "Ingrese otro monto (0 para terminar):"
		Leer monto
	FinMientras
		
	Escribir "Total retirado: ", total
	Escribir "Cantidad de retiros: ", contador
FinAlgoritmo
