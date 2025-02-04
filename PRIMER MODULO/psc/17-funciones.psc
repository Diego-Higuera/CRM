Algoritmo funciones
	
	// ************************************************************
	//                  FUNCIONES MATEMÁTICAS
	// ************************************************************
	
	// Valor absoluto. El número prescindiendo de su signo.
	Escribir "abs(-7) = ", abs(-7)
	
	// Raíz cuadrada
	Escribir "raiz(9) = ", raiz(9)
	
	// Valor truncado. Devuelve la parte entera de un número
	Escribir "trunc(3.456) = ", trunc(3.456)
	
	// Valor redondeado al entero más cercano.
	Escribir "redon(7.1) = ", redon(7.1)
	Escribir "redon(7.4999) = ", redon(7.4999)
	Escribir "redon(7.5) = ", redon(7.5)
	Escribir "redon(7.9) = ", redon(7.9)
	Escribir "redon(-7.5) = ", redon(-7.5)
	
	// Valores al azar. Devuelve un entero al azar entre 0 y x-1
	Escribir "azar(10) = ", azar(10)
	
	// ¿Cómo generaríamos un aleatorio entre un mínimo y un máximo?
	min<-5
	max<-7
	numeroAzar <- AZAR(max-min+1) + min
	Escribir "Número al azar: ", numeroAzar
	
	// ************************************************************
	//                  FUNCIONES DE CADENA
	// ************************************************************
	
	// La función longitud nos dice cuántos caracteres tiene una
	// cadena. Lógicamente, incluyendo espacios, ya que éstos
	// también son caracteres. La cadena debe ir entrecomillada,
	// pero PSeInt no permite escapar caracteres.
	Escribir "longitud(Hola mundo) = ", longitud("Hola mundo")
	
	// La función concatenar pega dos cadenas de texto
	Escribir "concatenar(Hola, mundo) = ", concatenar("Hola", "mundo")
	
	// Una subcadena es un fragmento de una cadena. Los parámetros indican
	// la cadena y las posiciones de inicio y fin (ambas incluidas)
	// respectivamente
	Escribir "subcadena(superman, 1, 5) = ", subcadena("superman", 1, 5)
	
	// mayusculas y minusculas convierte un texto a mayúsculas o
	// minúsculas respectivamente.
	Escribir "mayusculas(hola) = ", mayusculas("hola")
	Escribir "minusculas(HOLA) = ", minusculas("HOLA")
	
	// convertiranumero convierte una cadena de caracteres en número
	// y convertiratexto hace lo contrario, convertir un número en
	// texto.
	
	
	// ************************************************************
	//                FUNCIONES DE FECHA Y HORA
	// ************************************************************
	
	// horaactual devuelve la hora actual ly fechaactual la fecha
	Escribir "horaactual() = ", horaactual()
	Escribir "fechaactual() = ", fechaactual()
	
FinAlgoritmo
