Algoritmo  RegistroDePuntosVideojuego
	Definir cantJugadores , i , j , kills  Como Entero
	Definir puntajePartida , puntajeTotal , mejorPuntaje Como Real
	Definir mejorNombre , nombre como cadena
	Definir respuesta Como Caracter
	
	mejorPuntaje = 0
	mejorNombre = ""
	
	Escribir "BIENVENIDO ! Esta listo para iniciar una partida ? (S/N) "
	Leer respuesta
	
	Mientras respuesta <> "S" Y respuesta <> "s" Y respuesta <> "N" Y respuesta <> "n" Hacer
		Escribir "Opcion no valida, ingrese S o N:"
		Leer respuesta
	FinMientras
	
	Mientras respuesta = "S" O respuesta = "s" Hacer
		mejorPuntaje = 0
		mejorNombre = ""
		Escribir "Torneo Shooter"
		Esperar 2 Segundos
		Escribir "Ingrese la cantidad de jugadores (Hasta 50)"
		Leer cantJugadores
		Para i = 1 Hasta cantJugadores Con Paso 1 Hacer
			Escribir "Ingrese el nombre del jugador"
			Leer nombre
			puntajeTotal = 0
			//Bucle interno
			Para j = 1 Hasta 5 Con Paso 1 Hacer
				puntajePartida = 0
				Esperar 2 Segundos
				Escribir "Comienzo de la partida"
				Esperar 1 Segundos
				Escribir "Partida: " ,j ": Kills: "
				Leer kills
				puntajePartida = (kills*150)
				Si kills >= 15 Entonces
					puntajePartida = puntajePartida + 500
					Escribir "¡Rendimiento Excelente! Bonus: +500pts"
				SiNo
					Si kills >= 10 Entonces
						puntajePartida = puntajePartida + 250
						Escribir "¡Rendimiento Bueno! Bonus: +250pts"
					SiNo
						Si kills >= 5 Entonces
							puntajePartida = puntajePartida + 125
							Escribir "Rendimiento Regular. Bonus: +125pts"
						SiNo
							Escribir "Rendimiento Bajo. Sin Bonus: +0pts"
						FinSi
					FinSi
				FinSi
				puntajeTotal = puntajeTotal + puntajePartida
				Escribir "Ronda Finalizada"
				Escribir "Puntaje total de la partida " , j, ": ", puntajePartida
				Escribir "Puntaje total por ahora: ", puntajeTotal
			FinPara
			Si puntajeTotal > mejorPuntaje Entonces
				mejorPuntaje = puntajeTotal 
				mejorNombre = nombre
			FinSi
			
			//Puntuacion Final y Rendimiento del jugador
			Escribir "PUNTUACION FINAL DEL JUGADOR: " , nombre , " es de: " , puntajeTotal
		FinPara
		
		Escribir "FIN DE LA PARTIDA.."
		Escribir "MEJOR JUGADOR DE LA PARTIDA ES EL JUGADOR: ", Mayusculas(nombre) , " CON UNA PUNTUACION TOTAL DE: " , mejorPuntaje
		Escribir "Desea iniciar una nueva partida? (S/N)"
		Leer respuesta
		
		Mientras respuesta <> "S" Y respuesta <> "s" Y respuesta <> "N" Y respuesta <> "n" Hacer
			
			Escribir "Opcion no valida, ingrese S o N:"
			Leer respuesta
		FinMientras
	FinMientras
	
	Escribir "Gracias por participar. Hasta la proxima !"
	
	
FinAlgoritmo
