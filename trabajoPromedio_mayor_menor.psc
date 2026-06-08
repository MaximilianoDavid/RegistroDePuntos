Algoritmo trabajoPromedio_mayor_menor
	Definir num, suma, promedio, mayor, menor Como Real
	Definir i Como Entero
	//Entrada
	suma<-0
	Para i <- 1 Hasta 4 Hacer
		Escribir "Ingrese un numero:"
		Leer num
		si i = 1 Entonces
			mayor<-num
			menor<-num
		FinSi
		//Proceso 
		suma <- suma + num
		si num > mayor Entonces
			mayor <- num 
		FinSi
		si num < menor Entonces
			menor <- num
		FinSi
	FinPara
	promedio <- suma/4
	//Salida
	Escribir "Promedio: ", promedio
	Escribir "Mayor: ", mayor
	Escribir "menor: ", menor
FinAlgoritmo
