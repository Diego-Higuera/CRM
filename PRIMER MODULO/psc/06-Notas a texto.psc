Algoritmo notasTexto
	
	// Declaraciones.
	Definir nota Como Entero
	
	// Vamos a pedir al usuario que introduzca la nota.
	Escribir "Introduce la nota (0-10)"
	Leer nota
	
	Segun nota Hacer
		0:
			Escribir "Muy deficiente"
		1:
			Escribir "Muy deficiente"
		2:
			Escribir "Muy deficiente"
		3:
			Escribir "Insuficiente"
		4:
			Escribir "Insuficiente"
		5:
			Escribir "Suficiente"
		6:
			Escribir "Bien"
		7:
			Escribir "Notable"
		8:
			Escribir "Notable"
		9:
			Escribir "Sobresaliente"
		10:
			Escribir "Sobresaliente"
		De Otro Modo:
			Escribir nota, " no es una nota válida"
	Fin Segun
	
FinAlgoritmo
