Algoritmo calificaciones
    Definir n, i, reprobados Como Entero
    Definir nota, suma, promedio, mayor, menor Como Real
    suma <- 0
    reprobados <- 0

    Escribir "Cantidad de estudiantes:"
    Leer n

    Si n > 0 Entonces
        Para i <- 1 Hasta n Hacer
            Escribir "Ingrese la nota del estudiante:"
            Leer nota
            suma <- suma + nota

            Si i = 1 Entonces
                mayor <- nota
                menor <- nota
            SiNo
                Si nota > mayor Entonces
                    mayor <- nota
                FinSi

                Si nota < menor Entonces
                    menor <- nota
                FinSi
            FinSi

            Si nota < 3.0 Entonces
                reprobados <- reprobados + 1
            FinSi
        FinPara

        promedio <- suma / n
        Escribir "Promedio: ", promedio
        Escribir "Nota mayor: ", mayor
        Escribir "Nota menor: ", menor
        Escribir "Estudiantes reprobados: ", reprobados
    SiNo
        Escribir "Error: la cantidad de estudiantes debe ser mayor que 0."
    FinSi
FinAlgoritmo
