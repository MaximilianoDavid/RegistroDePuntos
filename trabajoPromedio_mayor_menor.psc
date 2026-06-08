Algoritmo trabajoPromedio_mayor_menor
	Definir promedio Como Real
	Definir i , edad , suma , mayor , menor, filas  Como Entero
	//Entrada
	suma = 0
	filas = 5
	
	
	Para i = 1 Hasta filas Hacer 
		Escribir "Ingrese un numero: (1-99)"
		Leer edad
		Mientras edad < 0 O edad > 99 Hacer
			Escribir "Escribir un número válido: (1 - 99)"
			Leer num
		FinMientras
		Si i = 1 Entonces
			mayor = edad
			menor = edad
		FinSi
		suma = suma + edad
		si edad > mayor Entonces
			mayor = edad
		FinSi
		si edad < menor Entonces
			menor = edad
		FinSi
	FinPara
	promedio = suma/4
	//Salida
	Escribir "Promedio Final: ", promedio
	Escribir "El número más alto de la fila es: ", mayor
	Escribir "El número más bajo de la fila es: ", menor
FinAlgoritmo
