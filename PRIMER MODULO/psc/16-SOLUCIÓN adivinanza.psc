Algoritmo adivinanza
	
	// Crea un programa que genere un número al azar entre el 1 y el 100. El  
	// usuario tendrá 7 oportunidades para adivinarlo. Tras cada intento, se le 
	// dirá si se ha  pasado o se ha quedado corto y el número de intentos que le 
	// restan.
	
	// Generar un número al azar entre 1 y 100
	numeroAzar <- AZAR(100) + 1
	
	// Para probar el código necesito saber el número al azar.
	// Escribir "Número: ", numeroAzar
	
	// Variable con el número de oportunidades
	oportunidades <- 7
	
	Repetir
		Escribir "Intenta adivinar el número"
		Leer numeroUsuario
		oportunidades <- oportunidades-1
		Si numeroUsuario > numeroAzar Entonces
			Escribir "Tu número es mayor que el que yo he pensado"
		Fin Si
		Si numeroUsuario < numeroAzar Entonces
			Escribir "Tu número es menor que el que yo he pensado"
		Fin Si
		Si numeroUsuario <> numeroAzar Entonces
			Escribir "Te quedan ", oportunidades, " oportunidades"
		Fin Si
	Hasta Que oportunidades=0 O numeroAzar=numeroUsuario
	
	// Cuando salimos del bucle no sabemos si es por que el usuario ha adivinado
	// el número o por que se ha quedado sin intentos.
	Si numeroUsuario=numeroAzar Entonces
		Escribir "Eres un crak has adivinado el número"
	SiNo
		Escribir "Eres un inútil. Te has quedado sin oportunidades"
		Escribir "El número era ", numeroAzar
	Fin Si
	
FinAlgoritmo
