Algoritmo ejercicios4
	
	// Declaraci�n.
	Definir numeroUsuario Como Entero
	Definir primerNumero, segundoNumero Como Entero
	Definir contador Como Entero
	Definir numero1, numero2 Como Entero
	
	// 4.1: Crea un programa que pida un n�mero al usuario y diga 
	// si es positivo, negativo o cero.
	
	// Pedir un n�mero al usuario.
	Escribir "Dime un n�mero entero"
	Leer numeroUsuario
	
	// Tenemos tres posibles respuestas. Por lo tanto, podemos
	// resolver el problema con un Si anidado.
	Si numeroUsuario > 0 Entonces
		Escribir "El n�mero es positivo"
	SiNo
		Si numeroUsuario < 0 Entonces
			Escribir "El n�mero es negativo"
		SiNo
			Escribir "El n�mero es cero"
		Fin Si
	Fin Si
	
	
	// 4.2: Crea un programa que pida al usuario dos n�meros y diga 
	// cu�ntos de ellos son positivos (estrictamente mayor que cero).
	Escribir "Introduce el primer n�mero"
	Leer primerNumero
	Escribir "Introduce el segundo n�mero"
	Leer segundoNumero
	
	// Primera versi�n.
	Si primerNumero>0 Y segundoNumero>0 Entonces
		Escribir "Hay dos positivos"
	SiNo
		Si primerNumero>0 O segundoNumero>0 Entonces
			Escribir "Hay un n�mero positivo"
		SiNo
			Escribir "No hay ning�n n�mero positivo"
		Fin Si
	Fin Si
	
	// Segunda versi�n. Necesito utilizar una variable que sirva
	// para llevar la cuenta de los positivos. Esta variable siempre
	// se tendr� que inicializar. En el caso de un contador, a cero.
	contador <- 0
	
	// Miramos si el primer n�mero es positivo.
	Si primerNumero > 0 Entonces
		// Incrementamos el contador
		contador <- contador + 1
	Fin Si
	
	// Miramos si el segundo n�mero es positivo.
	Si segundoNumero > 0 Entonces
		contador <- contador + 1
	Fin Si
	
	// Sean cu�ntos sean los positivos, al salir de estas dos
	// condicionales, tendremos el total en contador.
	Escribir "Hay un total de ", contador, " n�meros positivos"
	
	
	// 4.3 Crea un programa que pida al usuario dos n�meros y muestre
	// su divisi�n si el segundo no es cero, o un mensaje de aviso en 
	// caso contrario.
	Escribir "Introduce el primer n�mero"
	Leer numero1
	Escribir "Introduce el segundo n�mero"
	Leer numero2
	
	// Vemos si el segundo n�mero es cero.
	Si numero2 = 0 Entonces
		Escribir "No se puede hacer la divisi�n por que el segundo n�mero es cero"
	SiNo
		Escribir numero1, " entre ", numero2, " es igual a ", numero1/numero2
	Fin Si
	
FinAlgoritmo
