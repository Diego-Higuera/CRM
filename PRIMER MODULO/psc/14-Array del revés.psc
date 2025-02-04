Algoritmo arrayReves
	
	// Buscamos guardar 6 valores introducidos por el usuario y luego,
	// mostrarlos en el orden inverso. Lo ideal es guardar dichos valores
	// en un array.
	
	// Declaración del array.
	Dimension datos[6]
	
	// Recorremos el array para guardar en cada posición el valor que
	// introduzca el usuario.
	Para i<-1 Hasta 6 Con Paso 1 Hacer
		Escribir "Introduce el valor de la posición ", i
		Leer datos[i]
	Fin Para
	
	// Pintar al revés los datos almacenados en el array.
	Para i<-6 Hasta 1 Con Paso -1 Hacer
		Escribir datos[i]
	Fin Para
	
FinAlgoritmo
