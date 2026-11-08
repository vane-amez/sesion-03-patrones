Algoritmo validarcorreo
	Definir correo Como Cadena
    Definir intentos, i Como Entero
    Definir tieneArroba, tienePunto, valido Como Logico
    intentos <- 0
    valido <- Falso
    Repetir
        tieneArroba <- Falso
        tienePunto <- Falso
        Escribir "Ingrese su correo:"
        Leer correo
        intentos <- intentos + 1
        Para i <- 0 Hasta Longitud(correo)-1 Hacer
            Si SubCadena(correo, i, i) = "@" Entonces
                tieneArroba <- Verdadero
            FinSi
            Si SubCadena(correo, i, i) = "." Entonces
                tienePunto <- Verdadero
            FinSi
        FinPara
        Si tieneArroba Y tienePunto Entonces
            valido <- Verdadero
        FinSi
    Hasta Que valido O intentos = 3
    Si valido Entonces
        Escribir "Correo válido."
    SiNo
        Escribir "Se agotaron los intentos."
    FinSi
FinAlgoritmo
