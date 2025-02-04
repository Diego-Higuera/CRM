Algoritmo ejercicios3
	
	// Declaraciones.
	Definir primerNumero, segundoNumero Como Entero
	Definir base, altura Como Entero
	Definir radio Como Entero
	
	// 3.1: Crea un programa que escriba el resultado de multiplicar los dos
	// números que introduzca el usuario.
	Escribir "Introduce el primer número"
	Leer primerNumero
	Escribir "Introduce el segundo número"
	Leer segundoNumero
	
	Escribir "El resultado de multiplicar ", primerNumero, " por ", segundoNumero, " es: ", primerNumero * segundoNumero
	
	// Crea un programa que calcule la superficie de un rectángulo a partir de
	// su base y su altura, y que después muestre el valor de dicha superficie.
	Escribir "Introduce la base del rectángulo"
	Leer base
	Escribir "Introduce la altura del rectángulo"
	Leer altura
	
	Escribir "La superficie de un rectángulo de base ", base, " y altura ", altura, " es: ", base * altura
	
	// Crea un programa que calcule la superficie de un círculo a partir de su
	// radio (la fórmula es "PI * radio2 ") y que después muestre el valor de dicha superficie 
	// (pista: para calcular el cuadrado de un número basta con multiplicar el número por él 
	// mismo: x =x*x).
	Escribir "Introduce el radio del círculo"
	Leer radio
	
	Escribir "La superficie de un círculo de radio ", radio, " es: ", PI * radio ^ 2
	
FinAlgoritmo
