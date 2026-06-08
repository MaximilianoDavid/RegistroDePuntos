Algoritmo trabajoPromedio_mayor_menor
	Definir promedio Como Real
	Definir i , num , suma , mayor , menor  Como Entero
	//Entrada
	suma = 0
	Para i = 1 Hasta 4 Hacer
		Escribir "Ingrese un numero: (1-99)"
		Leer num
		Mientras num < 0 O num > 99 Hacer
			Escribir "Escribir un número válido: (1 - 99)"
			Leer num
		FinMientras
		Si i = 1 Entonces
			mayor = num
			menor = num
		FinSi
		suma = suma + num
		si num > mayor Entonces
			mayor = num 
		FinSi
		si num < menor Entonces
			menor = num
		FinSi
	FinPara
	promedio = suma/4
	//Salida
	Escribir "Promedio Final: ", promedio
	Escribir "El número más alto de la fila es: ", mayor
	Escribir "El número más bajo de la fila es: ", menor
FinAlgoritmo
