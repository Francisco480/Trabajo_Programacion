Algoritmo TP
	definir option Como cadena
	definir bsas_bariloche, bsas_salta, ros_bsas, mardel_mendoza como cadena
	definir contRuta1 Como Entero
	contRuta1=0
	Dimension bsas_bariloche[120,5]
	dimension bsas_salta[120,5]
	Dimension ros_bsas[80,5]
	Dimension mardel_mendoza[80,5]
	Repetir
		
		Escribir("1- Venta pasaje")
		Escribir("2- Buscar pasaje vendido")
		Escribir("3- Buscar pasajero")
		Escribir("4- Ordenar y mostrar lista pasajeros")
		Escribir("       a. Por n�mero de asiento Ascendente")
		Escribir("       b. Por n�mero de asiento Descendente")
		Escribir("5- Listado/s")
		Escribir("       a. Cantidad de pasajes vendido por ruta a�rea")
		Escribir("       b. Porcentaje de ventas por ruta a�rea")
		Escribir("Escriba SALIR para cerrar el programa")

		leer option
		option = Mayusculas(option)
		Mientras ((option<"1" o option>"5") y option<>"SALIR") Hacer
			Escribir ("Opci�n incorrecta")
			
			Escribir("1- Venta pasaje")
			Escribir("2- Buscar pasaje vendido")
			Escribir("3- Buscar pasajero")
			Escribir("4- Ordenar y mostrar lista pasajeros")
			Escribir("       a. Por n�mero de asiento Ascendente")
			Escribir("       b. Por n�mero de asiento Descendente")
			Escribir("5- Listado/s")
			Escribir("       a. Cantidad de pasajes vendido por ruta a�rea")
			Escribir("       b. Porcentaje de ventas por ruta a�rea")
			Escribir("Escriba SALIR para cerrar el programa")

			leer option
			option = Mayusculas(option)
		Fin Mientras
		Segun option Hacer
			"1":
				ventaPasaje(contRuta1)
			"2":
				//buscarPasaje()
			"3":
				//buscarPasajero()
				
			"4":
				//listaPasajeros()
				
			"5":
				//listados()
				
			De Otro Modo:
				Escribir ("Saludos")
		Fin Segun
		
	mientras que (option<>"SALIR")
	
FinAlgoritmo

SubProceso ventaPasaje(contRuta1)
	
	rutas(contRuta1)
	escribir ("Ingrese la opci�n de la ruta deseada")
	leer optionRuta
	mientras (optionRuta<1 o optionRuta>4)
		escribir ("Opci�n ingresada incorrecta, vuelva a elegir la opci�n")
		rutas(contRuta1)
		leer optionRuta
	FinMientras
	contRuta1 = contRuta1 + 1
FinSubProceso

SubProceso rutas(contRuta1)
	si(contRuta1<2)
		escribir("1. Buenos Aires - Bariloche")
	fin si
	escribir("2. Bueno Aires - Salta")
	escribir("3. Rosario - Buenos Aires")
	escribir("4. Mar Del Plata - Mendoza")
FinSubProceso
