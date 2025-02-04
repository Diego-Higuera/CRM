Algoritmo ejercicios3
	
	// Declaraciones.
	Definir primerNumero, segundoNumero Como Entero
	Definir base, altura Como Entero
	Definir radio Como Entero
	
	// 3.1: Crea un programa que escriba el resultado de multiplicar los dos
	// n�meros que introduzca el usuario.
	Escribir "Introduce el primer n�mero"
	Leer primerNumero
	Escribir "Introduce el segundo n�mero"
	Leer segundoNumero
	
	Escribir "El resultado de multiplicar ", primerNumero, " por ", segundoNumero, " es: ", primerNumero * segundoNumero
	
	// Crea un programa que calcule la superficie de un rect�ngulo a partir de
	// su base y su altura, y que despu�s muestre el valor de dicha superficie.
	Escribir "Introduce la base del rect�ngulo"
	Leer base
	Escribir "Introduce la altura del rect�ngulo"
	Leer altura
	
	Escribir "La superficie de un rect�ngulo de base ", base, " y altura ", altura, " es: ", base * altura
	
	// Crea un programa que calcule la superficie de un c�rculo a partir de su
	// radio (la f�rmula es "PI * radio2 ") y que despu�s muestre el valor de dicha superficie 
	// (pista: para calcular el cuadrado de un n�mero basta con multiplicar el n�mero por �l 
	// mismo: x =x*x).
	Escribir "Introduce el radio del c�rculo"
	Leer radio
	
	Escribir "La superficie de un c�rculo de radio ", radio, " es: ", PI * radio ^ 2
	
FinAlgoritmo
