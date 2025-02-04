Algoritmo ejercicios4
	
	// Declaración.
	Definir numeroUsuario Como Entero
	Definir primerNumero, segundoNumero Como Entero
	Definir contador Como Entero
	Definir numero1, numero2 Como Entero
	
	// 4.1: Crea un programa que pida un número al usuario y diga 
	// si es positivo, negativo o cero.
	
	// Pedir un número al usuario.
	Escribir "Dime un número entero"
	Leer numeroUsuario
	
	// Tenemos tres posibles respuestas. Por lo tanto, podemos
	// resolver el problema con un Si anidado.
	Si numeroUsuario > 0 Entonces
		Escribir "El número es positivo"
	SiNo
		Si numeroUsuario < 0 Entonces
			Escribir "El número es negativo"
		SiNo
			Escribir "El número es cero"
		Fin Si
	Fin Si
	
	
	// 4.2: Crea un programa que pida al usuario dos números y diga 
	// cuántos de ellos son positivos (estrictamente mayor que cero).
	Escribir "Introduce el primer número"
	Leer primerNumero
	Escribir "Introduce el segundo número"
	Leer segundoNumero
	
	// Primera versión.
	Si primerNumero>0 Y segundoNumero>0 Entonces
		Escribir "Hay dos positivos"
	SiNo
		Si primerNumero>0 O segundoNumero>0 Entonces
			Escribir "Hay un número positivo"
		SiNo
			Escribir "No hay ningún número positivo"
		Fin Si
	Fin Si
	
	// Segunda versión. Necesito utilizar una variable que sirva
	// para llevar la cuenta de los positivos. Esta variable siempre
	// se tendrá que inicializar. En el caso de un contador, a cero.
	contador <- 0
	
	// Miramos si el primer número es positivo.
	Si primerNumero > 0 Entonces
		// Incrementamos el contador
		contador <- contador + 1
	Fin Si
	
	// Miramos si el segundo número es positivo.
	Si segundoNumero > 0 Entonces
		contador <- contador + 1
	Fin Si
	
	// Sean cuántos sean los positivos, al salir de estas dos
	// condicionales, tendremos el total en contador.
	Escribir "Hay un total de ", contador, " números positivos"
	
	
	// 4.3 Crea un programa que pida al usuario dos números y muestre
	// su división si el segundo no es cero, o un mensaje de aviso en 
	// caso contrario.
	Escribir "Introduce el primer número"
	Leer numero1
	Escribir "Introduce el segundo número"
	Leer numero2
	
	// Vemos si el segundo número es cero.
	Si numero2 = 0 Entonces
		Escribir "No se puede hacer la división por que el segundo número es cero"
	SiNo
		Escribir numero1, " entre ", numero2, " es igual a ", numero1/numero2
	Fin Si
	
FinAlgoritmo
