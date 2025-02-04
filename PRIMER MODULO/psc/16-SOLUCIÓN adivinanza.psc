Algoritmo adivinanza
	
	// Crea un programa que genere un n�mero al azar entre el 1 y el 100. El  
	// usuario tendr� 7 oportunidades para adivinarlo. Tras cada intento, se le 
	// dir� si se ha  pasado o se ha quedado corto y el n�mero de intentos que le 
	// restan.
	
	// Generar un n�mero al azar entre 1 y 100
	numeroAzar <- AZAR(100) + 1
	
	// Para probar el c�digo necesito saber el n�mero al azar.
	// Escribir "N�mero: ", numeroAzar
	
	// Variable con el n�mero de oportunidades
	oportunidades <- 7
	
	Repetir
		Escribir "Intenta adivinar el n�mero"
		Leer numeroUsuario
		oportunidades <- oportunidades-1
		Si numeroUsuario > numeroAzar Entonces
			Escribir "Tu n�mero es mayor que el que yo he pensado"
		Fin Si
		Si numeroUsuario < numeroAzar Entonces
			Escribir "Tu n�mero es menor que el que yo he pensado"
		Fin Si
		Si numeroUsuario <> numeroAzar Entonces
			Escribir "Te quedan ", oportunidades, " oportunidades"
		Fin Si
	Hasta Que oportunidades=0 O numeroAzar=numeroUsuario
	
	// Cuando salimos del bucle no sabemos si es por que el usuario ha adivinado
	// el n�mero o por que se ha quedado sin intentos.
	Si numeroUsuario=numeroAzar Entonces
		Escribir "Eres un crak has adivinado el n�mero"
	SiNo
		Escribir "Eres un in�til. Te has quedado sin oportunidades"
		Escribir "El n�mero era ", numeroAzar
	Fin Si
	
FinAlgoritmo
