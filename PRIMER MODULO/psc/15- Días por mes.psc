Algoritmo diasMes
	
	// 9.1: Crea un programa que pida un número al usuario un número de mes
	// (por ejemplo, el 4) y diga cuántos días tiene (por ejemplo, 30). Debes 
	// usar una matriz. Completamos el ejericio asegurándonos de que el número
	// de mes que introduce el usuario es correcto.
	
	// Declaraciones.
	Definir numeroMes Como Entero
	
	// Lo primero, declarar la matriz y rellenar sus datos. El número de días
	// para cada mes. El número de mes coincide con el índice del array.
	Dimension dias[12]
	dias[1]<-31
	dias[2]<-28
	dias[3]<-31
	dias[4]<-30
	dias[5]<-31
	dias[6]<-30
	dias[7]<-31
	dias[8]<-31
	dias[9]<-30
	dias[10]<-31
	dias[11]<-30
	dias[12]<-31
	
	// Nos aseguramos de que el usuario introduce un número de mes correcto en el
	// rango de 1 a 12
	Repetir
		Escribir "¿En qué número de mes estás interesado? (1-12)"
		Leer numeroMes
		Si numeroMes<1 O numeroMes>12 Entonces
			Escribir "El número de mes es incorrecto. Introduce un valor entre 1-12"
		Fin Si
	Hasta Que numeroMes>=1 Y numeroMes<=12
	
	Escribir "El mes ", numeroMes, " tiene ", dias[numeroMes], " días"
	
FinAlgoritmo
