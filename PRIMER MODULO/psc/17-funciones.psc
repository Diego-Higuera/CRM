Algoritmo funciones
	
	// ************************************************************
	//                  FUNCIONES MATEM�TICAS
	// ************************************************************
	
	// Valor absoluto. El n�mero prescindiendo de su signo.
	Escribir "abs(-7) = ", abs(-7)
	
	// Ra�z cuadrada
	Escribir "raiz(9) = ", raiz(9)
	
	// Valor truncado. Devuelve la parte entera de un n�mero
	Escribir "trunc(3.456) = ", trunc(3.456)
	
	// Valor redondeado al entero m�s cercano.
	Escribir "redon(7.1) = ", redon(7.1)
	Escribir "redon(7.4999) = ", redon(7.4999)
	Escribir "redon(7.5) = ", redon(7.5)
	Escribir "redon(7.9) = ", redon(7.9)
	Escribir "redon(-7.5) = ", redon(-7.5)
	
	// Valores al azar. Devuelve un entero al azar entre 0 y x-1
	Escribir "azar(10) = ", azar(10)
	
	// �C�mo generar�amos un aleatorio entre un m�nimo y un m�ximo?
	min<-5
	max<-7
	numeroAzar <- AZAR(max-min+1) + min
	Escribir "N�mero al azar: ", numeroAzar
	
	// ************************************************************
	//                  FUNCIONES DE CADENA
	// ************************************************************
	
	// La funci�n longitud nos dice cu�ntos caracteres tiene una
	// cadena. L�gicamente, incluyendo espacios, ya que �stos
	// tambi�n son caracteres. La cadena debe ir entrecomillada,
	// pero PSeInt no permite escapar caracteres.
	Escribir "longitud(Hola mundo) = ", longitud("Hola mundo")
	
	// La funci�n concatenar pega dos cadenas de texto
	Escribir "concatenar(Hola, mundo) = ", concatenar("Hola", "mundo")
	
	// Una subcadena es un fragmento de una cadena. Los par�metros indican
	// la cadena y las posiciones de inicio y fin (ambas incluidas)
	// respectivamente
	Escribir "subcadena(superman, 1, 5) = ", subcadena("superman", 1, 5)
	
	// mayusculas y minusculas convierte un texto a may�sculas o
	// min�sculas respectivamente.
	Escribir "mayusculas(hola) = ", mayusculas("hola")
	Escribir "minusculas(HOLA) = ", minusculas("HOLA")
	
	// convertiranumero convierte una cadena de caracteres en n�mero
	// y convertiratexto hace lo contrario, convertir un n�mero en
	// texto.
	
	
	// ************************************************************
	//                FUNCIONES DE FECHA Y HORA
	// ************************************************************
	
	// horaactual devuelve la hora actual ly fechaactual la fecha
	Escribir "horaactual() = ", horaactual()
	Escribir "fechaactual() = ", fechaactual()
	
FinAlgoritmo
