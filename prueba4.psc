Algoritmo TP
	definir option Como cadena
	definir bsas_bariloche, bsas_salta, ros_bsas, mardel_mendoza como cadena
	definir contRuta1, contRuta2, contRuta3, contRuta4 Como Entero
	contRuta1=0
	contRuta2=0
	contRuta3=0
	contRuta4=0
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
				ventaPasaje(contRuta1, contRuta2, contRuta3, contRuta4)
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

SubProceso ventaPasaje(contRuta1 Por Referencia, contRuta2 Por Referencia, contRuta3 Por Referencia, contRuta4 Por Referencia)
	
	rutas(contRuta1, contRuta2, contRuta3, contRuta4)
	escribir ("Ingrese la opci�n de la ruta deseada")
	leer optionRuta
	mientras (optionRuta<1 o optionRuta>4)
		escribir ("Opci�n ingresada incorrecta, vuelva a elegir la opci�n")
		rutas(contRuta1, contRuta2, contRuta3, contRuta4)
		leer optionRuta
	FinMientras
	Segun optionRuta Hacer
		1:
			contRuta1 = contRuta1 + 1
		2:
			contRuta2 = contRuta2 + 1
		3:
			contRuta3 = contRuta3 + 1
		4:
			contRuta4 = contRuta4 + 1
	Fin Segun
	
FinSubProceso

SubProceso rutas(contRuta1 Por Referencia, contRuta2 Por Referencia, contRuta3 Por Referencia, contRuta4 Por Referencia)
	definir banderaRutas Como Entero
	banderaRutas=0
	si (contRuta1=2 y contRuta2=2 y contRuta3=2 y contRuta4=2)
		banderaRutas=1
	FinSi
	si (banderaRutas=0)
		
	
		si(contRuta1<2)
			escribir("1. Buenos Aires - Bariloche")
		fin si
		si(contRuta2<2)
			escribir("2. Buenos Aires - Salta")
		fin si
		si(contRuta3<2)
			escribir("3. Rosario - Buenos Aires")
		fin si
		si(contRuta4<2)
			escribir("4. Mar Del Plata - Mendoza")
		fin si
	SiNo
		escribir("No hay rutas disponibles en este momento")
	FinSi
FinSubProceso
