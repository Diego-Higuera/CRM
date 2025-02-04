Funcion resultado <- esPrimo ( numerito )
	
	// Inicializamos un contador para los divisores. un número siempre es
	// divisible entre sí mismo y entre 1. Si hay más de estos divisores,
	// significa que el número es primo
	cantidadDivisores <- 0
	Para i<-1 Hasta numerito Con Paso 1 Hacer
		Si numerito%i = 0 Entonces
			cantidadDivisores <- cantidadDivisores + 1
		Fin Si
	Fin Para
	
	Si cantidadDivisores > 2 Entonces
		resultado <- Falso
	SiNo
		resultado <- Verdadero
	Fin Si
	
Fin Funcion

Funcion resultado <- maximo ( numero1, numero2 )
	
	Si numero1 > numero2 Entonces
		resultado <- numero1
	SiNo
		resultado <- numero2
	Fin Si
	
Fin Funcion

SubAlgoritmo subrayar20
	
	Para i<-1 Hasta 20 Con Paso 1 Hacer
		Escribir Sin Saltar "-"
	Fin Para
	Escribir ""
	
FinSubAlgoritmo

SubAlgoritmo escribirSubrayado(frase,cantidad)
	
	Escribir frase
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir Sin Saltar "-"
	Fin Para
	Escribir ""
	
FinSubAlgoritmo

SubAlgoritmo escribirSubrayadoOptimizado(frase)
	
	Escribir frase
	Para i<-1 Hasta Longitud(frase) Con Paso 1 Hacer
		Escribir Sin Saltar "-"
	Fin Para
	Escribir ""
	
FinSubAlgoritmo




Algoritmo crearFunciones
	
	Escribir "Primer ejemplo"
	subrayar20
	
	Escribir "Segundo ejemplo"
	subrayar20
	
	Escribir "Tercer ejemplo"
	subrayar20
	
	escribirSubrayado("Primer ejemplo",14)
	escribirSubrayado("Segundo ejemplo",15)
	escribirSubrayado("Tercer ejemplo", 14)
	
	escribirSubrayadoOptimizado("Primer ejemplo")
	escribirSubrayadoOptimizado("Segundo ejemplo")
	escribirSubrayadoOptimizado("Tercer ejemplo")
	
	Escribir "El máximo de 7 y 15 es: ", maximo(7,15)
	Escribir "El máximo de 10 y 2 es: ", maximo(10,2)
	
	// Calcular los números primos entre 1 y 100
	Escribir "Números primos entre el 1 y el 100:"
	Para i<-1 Hasta 100 Con Paso 1 Hacer
		Si esPrimo(i) = Verdadero Entonces
			Escribir i
		Fin Si
	Fin Para
	
FinAlgoritmo
