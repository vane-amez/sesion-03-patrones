Funcion subtotal <- CalcularSubtotal(cantidad, precio)
    Definir subtotal Como Real
    subtotal <- cantidad * precio
FinFuncion

Funcion propina <- CalcularPropina(subtotal, aplica)
    Definir propina Como Real
	
    Si aplica = "S" O aplica = "s" Entonces
        propina <- subtotal * 0.10
    SiNo
        propina <- 0
    FinSi
FinFuncion

Funcion valor <- DividirCuenta(total, comensales)
    Definir valor Como Real
    valor <- total / comensales
FinFuncion

Funcion resultado <- RedondearValor(valor)
    Definir resultado Como Real
    resultado <- Redon(valor)
FinFuncion



Algoritmo factura_restaurante
	Definir cantidad, comensales Como Entero
    Definir precio, subtotal, propina, total Como Real
    Definir valorPersona, valorFinal Como Real
    Definir aplica Como Cadena
	
    Escribir "Cantidad de platos:"
    Leer cantidad
	
    Escribir "Precio por plato:"
    Leer precio
	
    Escribir "¿Desea incluir propina? S/N"
    Leer aplica
	
    Escribir "Cantidad de comensales:"
    Leer comensales
	
    Si cantidad > 0 Y precio >= 0 Y comensales > 0 Entonces
		
        subtotal <- CalcularSubtotal(cantidad, precio)
        propina <- CalcularPropina(subtotal, aplica)
        total <- subtotal + propina
        valorPersona <- DividirCuenta(total, comensales)
        valorFinal <- RedondearValor(valorPersona)
		
        Escribir "Subtotal: $", subtotal
        Escribir "Propina: $", propina
        Escribir "Total factura: $", total
        Escribir "Valor por persona: $", valorFinal
		
    SiNo
        Escribir "Error: Verifique los datos ingresados."
    FinSi
	
FinAlgoritmo
