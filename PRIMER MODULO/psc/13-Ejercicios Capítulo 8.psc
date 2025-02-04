Algoritmo ejercicios8
	
	// Declaraciones.
	Definir contador, tabla Como Entero
	
	// 8.1: Crea un programa que escriba los múltiplos del 3, desde el 3 hasta el 30.
	Escribir "Múltiplos de 3:"
	Para contador<-3 Hasta 30 Con Paso 3 Hacer
		Escribir contador
	Fin Para
	
	// 8.2: Crea un programa que escriba los números del 20 al 10, descendiendo.
	Escribir "Números descendentes"
	Para contador<-20 Hasta 10 Con Paso -1 Hacer
		Escribir contador
	Fin Para
	
	// 8.3: Crea un programa que escriba la tabla de multiplicar del 5: desde
	// "5 x 0 = 0" hasta "5 x 10 = 50"
	Escribir "Tabla de multiplicar del 5"
	Para multiplicador<-0 Hasta 10 Con Paso 1 Hacer
		Escribir "5 x ", multiplicador, " = ", 5*multiplicador
	Fin Para
	
	// Pero esto es muy limitado. ¿Y si el usuario pudiera elegir la tabla que quiere?
	// Pedimos al usuario el número de la tabla
	Escribir "Introduce el número de la tabla"
	Leer tabla
	Escribir "Tabla de multiplicar del ", tabla
	Para multiplicador<-0 Hasta 10 Con Paso 1 Hacer
		Escribir tabla, " x ", multiplicador, " = ", tabla*multiplicador
	Fin Para
	
	// El hecho de utilizar una variable nos permite crear cualquier tabla. ¿Y si
	// pintáramos todas las tablas del 1 al 10?
	Para tabla<-1 Hasta 10 Con Paso 1 Hacer
		Escribir "Tabla de multiplicar del ", tabla
		Para multiplicador<-0 Hasta 10 Con Paso 1 Hacer
			Escribir tabla, " x ", multiplicador, " = ", tabla*multiplicador
		Fin Para
	Fin Para
	
	
FinAlgoritmo
