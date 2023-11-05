Algoritmo TP
    definir option Como cadena
    definir bsas_bariloche, bsas_salta, ros_bsas, mardel_mendoza, nombreApellido, dni, tel, equipajeBodega, numPasajeroFrec  como cadena
    definir contRuta1, contRuta2, contRuta3, contRuta4, dimFila1, dimFila2, dimColumnas Como Entero
	nombreApellido=""
	dni=""
	tel=""
	equipajeBodega=""
	numPasajeroFrec=""
    dimFila1=2
    dimFila2=2
    dimColumnas=6
    contRuta1=0
    contRuta2=0
    contRuta3=0
    contRuta4=0
    Dimension bsas_bariloche[dimFila1,DimColumnas]
    dimension bsas_salta[dimFila1,DimColumnas]
    Dimension ros_bsas[dimFila2,DimColumnas]
    Dimension mardel_mendoza[dimFila2,DimColumnas]
    inicioArreglos(bsas_bariloche, bsas_salta, ros_bsas, mardel_mendoza,dimFila1,dimFila2,dimColumnas)
    Repetir
        Escribir("1- Venta pasaje")
        Escribir("2- Buscar pasaje vendido")
        Escribir("3- Buscar pasajero")
        Escribir("4- Ordenar y mostrar lista pasajeros")
        Escribir("       a. Por número de asiento Ascendente")
        Escribir("       b. Por número de asiento Descendente")
        Escribir("5- Listado/s")
        Escribir("       a. Cantidad de pasajes vendido por ruta aérea")
        Escribir("       b. Porcentaje de ventas por ruta aérea")
        Escribir("Escriba SALIR para cerrar el programa")
        leer option
        option = Mayusculas(option)
        Mientras ((option<"1" o option>"5") y option<>"SALIR") Hacer
            Escribir ("Opción incorrecta")
            Escribir("1- Venta pasaje")
            Escribir("2- Buscar pasaje vendido")
            Escribir("3- Buscar pasajero")
            Escribir("4- Ordenar y mostrar lista pasajeros")
            Escribir("       a. Por número de asiento Ascendente")
            Escribir("       b. Por número de asiento Descendente")
            Escribir("5- Listado/s")
            Escribir("       a. Cantidad de pasajes vendido por ruta aérea")
            Escribir("       b. Porcentaje de ventas por ruta aérea")
            Escribir("Escriba SALIR para cerrar el programa")
            leer option
            option = Mayusculas(option)
        Fin Mientras
        Segun option Hacer
            "1":
                ventaPasaje(contRuta1, contRuta2, contRuta3, contRuta4,bsas_bariloche, bsas_salta, ros_bsas, mardel_mendoza,dimColumnas,dimFila1, dimFila2, nombreApellido, dni, tel, equipajeBodega, numPasajeroFrec)
            "2":
                buscarPasaje(bsas_bariloche, bsas_salta, ros_bsas, mardel_mendoza,dimColumnas,dimFila1, dimFila2)
            "3":
                buscarPasajero(bsas_bariloche, bsas_salta, ros_bsas, mardel_mendoza,dimColumnas,dimFila1, dimFila2)
            "4":
                listaPasajeros(bsas_bariloche, bsas_salta, ros_bsas, mardel_mendoza,dimColumnas,dimFila1, dimFila2)
            "5":
                listados(contRuta1, contRuta2, contRuta3, contRuta4,bsas_bariloche, bsas_salta, ros_bsas, mardel_mendoza,dimColumnas,dimFila1, dimFila2)
            De Otro Modo:
                Escribir ("Saludos")
        Fin Segun
    mientras que (option<>"SALIR")
FinAlgoritmo

//Inicio los arreglos en "0" para un mejor manejo de la información
SubProceso inicioArreglos(bsas_bariloche Por Referencia, bsas_salta Por Referencia, ros_bsas Por Referencia, mardel_mendoza Por Referencia,dimFila1,dimFila2,dimColumnas)
    Para i<-0 Hasta dimFila1-1 Con Paso 1 Hacer
        Para j<-0 Hasta dimColumnas-1 Con Paso 1 Hacer
            bsas_bariloche[i,j]=""
        Fin Para
    Fin Para
    Para i<-0 Hasta dimFila1-1 Con Paso 1 Hacer
        Para j<-0 Hasta dimColumnas-1 Con Paso 1 Hacer
            bsas_salta[i,j]=""
        Fin Para
    Fin Para
    Para i<-0 Hasta dimFila2-1 Con Paso 1 Hacer
        Para j<-0 Hasta dimColumnas-1 Con Paso 1 Hacer
            ros_bsas[i,j]=""
        Fin Para
    Fin Para
    Para i<-0 Hasta dimFila2-1 Con Paso 1 Hacer
        Para j<-0 Hasta dimColumnas-1 Con Paso 1 Hacer
            mardel_mendoza[i,j]=""
        Fin Para
    Fin Para
FinSubProceso

//Subproceso que maneja el pedido de la opción de Ruta y después muestra el mensaje con los datos
SubProceso ventaPasaje(contRuta1 Por Referencia, contRuta2 Por Referencia, contRuta3 Por Referencia, contRuta4 Por Referencia,bsas_bariloche, bsas_salta, ros_bsas, mardel_mendoza,dimColumnas,dimFila1, dimFila2,nombreApellido, dni, tel, equipajeBodega, numPasajeroFrec)
    definir CostoPasaje como real
	definir resutaldo Como Logico
	optionRuta=0
    
    mientras (optionRuta<1 o optionRuta>4)
        escribir ("Elija la opcion deseada")
        resultado = rutas(contRuta1, contRuta2, contRuta3, contRuta4, dimFila1, dimFila2)
        leer optionRuta
    FinMientras
	si (resultado)
		
		
		Segun optionRuta Hacer
			1:
				ReservaPasaje(contRuta1,bsas_bariloche,dimColumnas,dimFila1,nombreApellido, dni, tel, equipajeBodega, numPasajeroFrec)
				para i<-0 hasta contRuta1
					Escribir ("Ruta: Buenos Aires - Bariloche")
					para j<-0 hasta dimColumnas-1
						Segun j Hacer
							0:
								escribir Sin Saltar "Asiento: "
								escribir bsas_bariloche[i,j]
							1:
								escribir Sin Saltar "Nombre y apellido: "
								escribir bsas_bariloche[i,j]
							2:
								escribir Sin Saltar "DNI: "
								escribir bsas_bariloche[i,j]
							3:
								escribir Sin Saltar "Teléfono: "
								escribir bsas_bariloche[i,j]
							4:
								escribir Sin Saltar "Equipaje en bodega: "
								
								escribir bsas_bariloche[i,j]
							5:
								escribir Sin Saltar "Número pasajero frecuente: "
								escribir bsas_bariloche[i,j]
								
						Fin Segun
						
					FinPara
					costoPasaje = CalculoPasaje1(bsas_bariloche, contRuta1)
					escribir ("Costo Pasaje: "), costoPasaje
				FinPara
				contRuta1 = contRuta1 + 1
				
			2:
				ReservaPasaje(contRuta2, bsas_salta,dimColumnas,dimFila1,nombreApellido, dni, tel, equipajeBodega, numPasajeroFrec)
				
				para i<-0 hasta contRuta2
					Escribir ("Ruta: Buenos Aires - Salta")
					para j<-0 hasta dimColumnas-1
						Segun j Hacer
							0:
								escribir Sin Saltar "Asiento: "
								escribir bsas_salta[i,j]
							1:
								escribir Sin Saltar "Nombre y apellido: "
								escribir bsas_salta[i,j]
							2:
								escribir Sin Saltar "DNI: "
								escribir bsas_salta[i,j]
							3:
								escribir Sin Saltar "Teléfono: "
								escribir bsas_salta[i,j]
							4:
								escribir Sin Saltar "Equipaje en bodega: "
								escribir bsas_salta[i,j]
							5:
								escribir Sin Saltar "Número pasajero frecuente: "
								escribir bsas_salta[i,j]
								
						Fin Segun
					FinPara
					
					costoPasaje = CalculoPasaje2(bsas_salta, contRuta2)
					escribir ("Costo Pasaje: "), costoPasaje
					
				FinPara
				contRuta2 = contRuta2 + 1
				
			3:
				ReservaPasaje(contRuta3, ros_bsas,dimColumnas,dimFila2,nombreApellido, dni, tel, equipajeBodega, numPasajeroFrec)
				para i<-0 hasta contRuta3
					Escribir ("Ruta: Rosario - Buenos Aires")
					para j<-0 hasta dimColumnas-1
						Segun j Hacer
							0:
								escribir Sin Saltar "Asiento: "
								escribir ros_bsas[i,j]
							1:
								escribir Sin Saltar "Nombre y apellido: "
								escribir ros_bsas[i,j]
							2:
								escribir Sin Saltar "DNI: "
								escribir ros_bsas[i,j]
							3:
								escribir Sin Saltar "Teléfono: "
								escribir ros_bsas[i,j]
							4:
								escribir Sin Saltar "Equipaje en bodega: "
								escribir ros_bsas[i,j]
							5:
								escribir Sin Saltar "Número pasajero frecuente: "
								escribir ros_bsas[i,j]
								
						Fin Segun
					FinPara
					costoPasaje = CalculoPasaje3(ros_bsas, contRuta3)
					escribir ("Costo Pasaje: "), costoPasaje
				FinPara
				contRuta3 = contRuta3 + 1
				
			4:
				ReservaPasaje(contRuta4, mardel_mendoza,dimColumnas,dimFila2,nombreApellido, dni, tel, equipajeBodega, numPasajeroFrec)
				para i<-0 hasta contRuta4
					Escribir ("Ruta: Mar del Plata - Mendoza")
					para j<-0 hasta dimColumnas-1
						Segun j Hacer
							0:
								escribir Sin Saltar "Asiento: "
								escribir mardel_mendoza[i,j]
							1:
								escribir Sin Saltar "Nombre y apellido: "
								escribir mardel_mendoza[i,j]
							2:
								escribir Sin Saltar "DNI: "
								escribir mardel_mendoza[i,j]
							3:
								escribir Sin Saltar "Teléfono: "
								escribir mardel_mendoza[i,j]
							4:
								escribir Sin Saltar "Equipaje en bodega: "
								escribir mardel_mendoza[i,j]
							5:
								escribir Sin Saltar "Número pasajero frecuente: "
								escribir mardel_mendoza[i,j]
								
						Fin Segun
					FinPara
					costoPasaje = CalculoPasaje4(mardel_mendoza, contRuta4)
					escribir ("Costo Pasaje: "), costoPasaje
				FinPara
				contRuta4 = contRuta4 + 1
				
		Fin Segun
		costoPasaje=0
	SiNo
		escribir ("No quedan mas pasajes")
	FinSi
FinSubProceso

//Subproceso que muestra las opciones disponibles de las rutas manejado por un contador que cuando llega al número máximo de asientos deja de mostrar la ruta
Funcion return<- rutas(contRuta1 Por Referencia, contRuta2 Por Referencia, contRuta3 Por Referencia, contRuta4 Por Referencia, dimFila1, dimFila2)
	definir banderaRutas Como Entero
	banderaRutas=0
	si (contRuta1=dimFila1 y contRuta2=dimFila1 y contRuta3=dimFila2 y contRuta4=dimFila2)
		banderaRutas=1
	FinSi
	si (banderaRutas=0)
		return = Verdadero
		
		si(contRuta1<dimFila1)
			escribir("1. Buenos Aires - Bariloche")
		fin si
		si(contRuta2<dimFila1)
			escribir("2. Buenos Aires - Salta")
		fin si
		si(contRuta3<dimFila2)
			escribir("3. Rosario - Buenos Aires")
		fin si
		si(contRuta4<dimFila2)
			escribir("4. Mar Del Plata - Mendoza")
		fin si
	SiNo
		escribir("No hay rutas disponibles en este momento, ingrese cualquier número del 1 al 4 para volver al menú")
		return = Falso
	FinSi
FinFuncion


//Subproceso que pide y guarda los datos del cliente en el arreglo bsas_bariloche
SubProceso ReservaPasaje(contRuta,array Por Referencia,dimColumnas,dimFila,nombreApellido, dni, tel, equipajeBodega, numPasajeroFrec)
	para i<-0 hasta 0 hacer
		para j<-0 hasta dimColumnas-1 hacer
			Segun j Hacer
				0:
					
					array[contRuta,j] = ConvertirATexto(contRuta+1)
				1:
					escribir ("Ingrese nombre y apellido")
					leer nombreApellido
					array[contRuta,j] = nombreapellido
				2:
					escribir ("Ingrese dni")
					leer dni
					array[contRuta,j] = dni
				3:
					escribir ("Ingrese telefono")
					leer tel
					array[contRuta,j] = tel
				4:
					escribir ("¿LLeva equipaje en bodega? Verdadero/Falso")
					leer equipajeBodega
					array[contRuta,j] = Mayusculas(equipajeBodega)
				5:
					escribir ("Ingrese número de pasajero frecuente")
					leer numPasajeroFrec
					array[contRuta,j] = numPasajeroFrec
					
			Fin Segun
		FinPara
	fin para
	
	
FinSubProceso



Funcion return<-CalculoPasaje1(bsas_bariloche, contRuta1)
	definir return Como Real
	si (contRuta1<=20 y bsas_bariloche[contRuta1,4]="VERDADERO")
		return = 150000 + (150000*5/100)
	FinSi
	si (contRuta1<=20 y bsas_bariloche[contRuta1,4]="FALSO")
		return = 150000
	FinSi
	si ((contRuta1>20 y contRuta1<=60) y bsas_bariloche[contRuta1,4]=="VERDADERO")
		return = (150000+(150000*10/100)) + ((150000+150000*10/100)*5/100)
	FinSi
	si ((contRuta1>20 y contRuta1<=60) y bsas_bariloche[contRuta1,4]="FALSO")
		return = (150000+(150000*10/100)) 
	FinSi
	si ((contRuta1>60) y bsas_bariloche[contRuta1,4]="VERDADERO")
		return = (180000 + 180000*5/100)
	FinSi
	si ((contRuta1>60) y bsas_bariloche[contRuta1,4]="FALSO")
		return = 180000
	FinSi
FinFuncion

Funcion return<-CalculoPasaje2(bsas_salta, contRuta2)
	definir return Como Real
	si (contRuta2<=20 y bsas_salta[contRuta2,4]="VERDADERO")
		return = 120000 + (120000*5/100)
	FinSi
	si (contRuta2<=20 y bsas_salta[contRuta2,4]="FALSO")
		return = 120000
	FinSi
	si ((contRuta2>20 y contRuta2<=60) y bsas_salta[contRuta2,4]=="VERDADERO")
		return = (120000+(120000*10/100)) + ((120000+120000*10/100)*5/100)
	FinSi
	si ((contRuta2>20 y contRuta2<=60) y bsas_salta[contRuta2,4]="FALSO")
		return = (120000+(120000*10/100)) 
	FinSi
	si ((contRuta2>60) y bsas_salta[contRuta2,4]="VERDADERO")
		return = (150000 + 150000*5/100)
	FinSi
	si ((contRuta2>60) y bsas_salta[contRuta2,4]="FALSO")
		return = 150000
	FinSi
FinFuncion

Funcion return<-CalculoPasaje3(ros_bsas, contRuta3)
	definir return Como Real
	si (contRuta3<=10 y ros_bsas[contRuta3,4]="VERDADERO")
		return = 70000 + (70000*5/100)
	FinSi
	si (contRuta3<=10 y ros_bsas[contRuta3,4]="FALSO")
		return = 70000
	FinSi
	si ((contRuta3>10 y contRuta3<=40) y ros_bsas[contRuta3,4]=="VERDADERO")
		return = (70000+(70000*15/100)) + ((70000+70000*15/100)*5/100)
	FinSi
	si ((contRuta3>10 y contRuta3<=40) y ros_bsas[contRuta3,4]="FALSO")
		return = (70000+(70000*15/100)) 
	FinSi
	si ((contRuta3>40) y ros_bsas[contRuta3,4]="VERDADERO")
		return = (95000 + 95000*5/100)
	FinSi
	si ((contRuta3>40) y ros_bsas[contRuta3,4]="FALSO")
		return = 95000
	FinSi
FinFuncion

Funcion return<-CalculoPasaje4(mardel_mendoza, contRuta4)
	definir return Como Real
	si (contRuta4<=10 y mardel_mendoza[contRuta4,4]="VERDADERO")
		return = 95000 + (95000*5/100)
	FinSi
	si (contRuta4<=10 y mardel_mendoza[contRuta4,4]="FALSO")
		return = 95000
	FinSi
	si ((contRuta4>10 y contRuta4<=40) y mardel_mendoza[contRuta4,4]=="VERDADERO")
		return = (95000+(95000*15/100)) + ((95000+95000*15/100)*5/100)
	FinSi
	si ((contRuta4>10 y contRuta4<=40) y mardel_mendoza[contRuta4,4]="FALSO")
		return = (95000+(95000*15/100)) 
	FinSi
	si ((contRuta4>40) y mardel_mendoza[contRuta4,4]="VERDADERO")
		return = (125000 + 125000*5/100)
	FinSi
	si ((contRuta4>40) y mardel_mendoza[contRuta4,4]="FALSO")
		return = 125000
	FinSi
FinFuncion


//PUNTO 2, BUSCAR PASAJE POR ASIENTO
SubProceso buscarPasaje(bsas_bariloche, bsas_salta, ros_bsas, mardel_mendoza,dimColumnas,dimFila1, dimFila2)
	definir optionRuta, asientoABuscar Como Entero
	
	
	escribir ("Ingrese el número de la ruta en la que desea buscar: 1: Buenos Aires - Bariloche, 2: Buenos Aires - Salta, 3: Rosario - Buenos Aires, 4: Mar Del Plata - Mendoza")
	leer optionRuta
	mientras (optionRuta<1 o optionRuta>4)
		Escribir ("Opción ingresada incorrecta, vuelva a ingresarla")
		escribir ("Ingrese el número de la ruta en la que desea buscar: 1: Buenos Aires - Bariloche, 2: Buenos Aires - Salta, 3: Rosario - Buenos Aires, 4: Mar Del Plata - Mendoza")
		leer optionRuta
	FinMientras
	
	Segun optionRuta Hacer
		1:
			escribir ("Ingrese el número de asiento a buscar")
			leer asientoABuscar
			Mientras (asientoABuscar<0 o asientoAbuscar>120)
				Escribir("Opción ingresada incorrecta, vuelva a ingresarla")
				escribir ("Ingrese el número de asiento a buscar")
				leer asientoABuscar
			FinMientras
			BusquedaRuta(bsas_bariloche,dimColumnas,dimFila1, ConvertirATexto(asientoABuscar))
		2:
			escribir ("Ingrese el número de asiento a buscar")
			leer asientoABuscar
			Mientras (asientoABuscar<0 o asientoAbuscar>120)
				Escribir("Opción ingresada incorrecta, vuelva a ingresarla")
				escribir ("Ingrese el número de asiento a buscar")
				leer asientoABuscar
			FinMientras
			BusquedaRuta(bsas_salta,dimColumnas,dimFila1, ConvertirATexto(asientoABuscar))
		3:
			escribir ("Ingrese el número de asiento a buscar")
			leer asientoABuscar
			Mientras (asientoABuscar<0 o asientoAbuscar>80)
				Escribir("Opción ingresada incorrecta, vuelva a ingresarla")
				escribir ("Ingrese el número de asiento a buscar")
				leer asientoABuscar
			FinMientras
			BusquedaRuta(ros_bsas,dimColumnas,dimFila2,ConvertirATexto(asientoABuscar))
		4:
			escribir ("Ingrese el número de asiento a buscar")
			leer asientoABuscar
			Mientras (asientoABuscar<0 o asientoAbuscar>80)
				Escribir("Opción ingresada incorrecta, vuelva a ingresarla")
				escribir ("Ingrese el número de asiento a buscar")
				leer asientoABuscar
			FinMientras
			BusquedaRuta(mardel_mendoza,dimColumnas,dimFila2,ConvertirATexto(asientoABuscar))
		De Otro Modo:
			Escribir ("Opción ingresada errónea")
			
	Fin Segun
	
FinSubProceso

SubProceso BusquedaRuta(array ,dimColumnas,dimFila,asientoABuscar)
	definir i, banderaAsientoVacio Como Entero
	i=0
	banderaAsientoVacio = 0
	mientras (i<dimFila)
		si array[i,0]==asientoABuscar
			
			Escribir ("Asiento encontrado")
			Escribir ("Nombre y apellido: "), array[i,1]
			Escribir ("Ruta: Buenos Aires - Bariloche")
			Escribir ("Dni: "), array[i,2]
			banderaAsientoVacio = 1
			
		FinSi
		i = i+1
	FinMientras
	si (banderaAsientoVacio = 0)
		Escribir ("Asiento vacío")
	FinSi
FinSubProceso



//PUNTO 3 BÚSQUEDA POR PASAJERO

SubProceso buscarPasajero(bsas_bariloche, bsas_salta, ros_bsas, mardel_mendoza,dimColumnas,dimFila1, dimFila2)
	definir optionRuta Como Entero
	definir pasajeroABuscar como caracter
	
	
	escribir ("Ingrese el número de la ruta en la que desea buscar: 1: Buenos Aires - Bariloche, 2: Buenos Aires - Salta, 3: Rosario - Buenos Aires, 4: Mar Del Plata - Mendoza")
	leer optionRuta
	mientras (optionRuta<1 o optionRuta>4)
		Escribir ("Opción ingresada incorrecta, vuelva a ingresarla")
		escribir ("Ingrese el número de la ruta en la que desea buscar: 1: Buenos Aires - Bariloche, 2: Buenos Aires - Salta, 3: Rosario - Buenos Aires, 4: Mar Del Plata - Mendoza")
		leer optionRuta
	FinMientras
	
	Segun optionRuta Hacer
		1:
			escribir ("Ingrese el nombre del pasajero a buscar")
			leer pasajeroABuscar
			
			BusquedaPasajeroRuta1(bsas_bariloche,dimColumnas,dimFila1, pasajeroABuscar)
		2:
			escribir ("Ingrese el nombre del pasajero a buscar")
			leer pasajeroABuscar
			
			BusquedaPasajeroRuta2(bsas_salta,dimColumnas,dimFila1, pasajeroABuscar)
		3:
			escribir ("Ingrese el nombre del pasajero a buscar")
			leer pasajeroABuscar
			BusquedaPasajeroRuta3(ros_bsas,dimColumnas,dimFila2,pasajeroABuscar)
		4:
			escribir ("Ingrese el nombre del pasajero a buscar")
			leer pasajeroABuscar
			BusquedaPasajeroRuta4(mardel_mendoza,dimColumnas,dimFila2,pasajeroABuscar)
		De Otro Modo:
			Escribir ("Opción ingresada errónea")
			
	Fin Segun
	
FinSubProceso


SubProceso BusquedaPasajeroRuta1(bsas_bariloche,dimColumnas,dimFila1, pasajeroABuscar)
	definir i, banderaAsientoVacio Como Entero
	i=0
	banderaAsientoVacio = 0
	mientras (i<dimFila1)
		si bsas_bariloche[i,1]==pasajeroABuscar
			
			Escribir ("Asiento encontrado")
			Escribir ("Nombre y apellido: "), bsas_bariloche[i,1]
			Escribir ("Ruta: Buenos Aires - Bariloche")
			Escribir ("Dni: "), bsas_bariloche[i,2]
			banderaAsientoVacio = 1
			
		FinSi
		i = i+1
	FinMientras
	si (banderaAsientoVacio = 0)
		Escribir ("Pasajero no encontrado")
	FinSi
FinSubProceso

SubProceso BusquedaPasajeroRuta2(bsas_salta,dimColumnas,dimFila1, pasajeroABuscar)
	definir i, banderaAsientoVacio Como Entero
	i=0
	banderaAsientoVacio = 0
	mientras (i<dimFila1)
		si bsas_salta[i,1]==pasajeroABuscar
			
			Escribir ("Asiento encontrado")
			Escribir ("Nombre y apellido: "), bsas_salta[i,1]
			Escribir ("Ruta: Buenos Aires - Salta")
			Escribir ("Dni: "), bsas_salta[i,2]
			banderaAsientoVacio = 1
			
		FinSi
		i = i+1
	FinMientras
	si (banderaAsientoVacio = 0)
		Escribir ("Pasajero no encontrado")
	FinSi
FinSubProceso

SubProceso BusquedaPasajeroRuta3(ros_bsas,dimColumnas,dimFila2, pasajeroABuscar)
	definir i, banderaAsientoVacio Como Entero
	i=0
	banderaAsientoVacio = 0
	mientras (i<dimFila2)
		si ros_bsas[i,1]==pasajeroABuscar
			
			Escribir ("Asiento encontrado")
			Escribir ("Nombre y apellido: "), ros_bsas[i,1]
			Escribir ("Ruta: Rosario - Buenos Aires")
			Escribir ("Dni: "), ros_bsas[i,2]
			banderaAsientoVacio = 1
			
		FinSi
		i = i+1
	FinMientras
	si (banderaAsientoVacio = 0)
		Escribir ("Pasajero no encontrado")
	FinSi
FinSubProceso

SubProceso BusquedaPasajeroRuta4(mardel_mendoza,dimColumnas,dimFila2,pasajeroABuscar)
	definir i, banderaAsientoVacio Como Entero
	i=0
	banderaAsientoVacio = 0
	mientras (i<dimFila2)
		si mardel_mendoza[i,1]==pasajeroABuscar
			
			Escribir ("Asiento encontrado")
			Escribir ("Nombre y apellido: "), mardel_mendoza[i,1]
			Escribir ("Ruta: Mar del Plata - Mendoza")
			Escribir ("Dni: "), mardel_mendoza[i,2]
			banderaAsientoVacio = 1
			
		FinSi
		i = i+1
	FinMientras
	si (banderaAsientoVacio = 0)
		Escribir ("Pasajero no encontrado")
	FinSi
FinSubProceso


//Punto 4 ORDENAMIENTO Y MUESTRA ASCENDENTE Y DESCENDENTE

SubProceso listaPasajeros(bsas_bariloche, bsas_salta, ros_bsas, mardel_mendoza,dimColumnas,dimFila1, dimFila2)
	definir optionRuta, optionOrdenamiento Como Entero
	
	
	escribir ("Ingrese el número de la ruta en la que desea buscar: 1: Buenos Aires - Bariloche, 2: Buenos Aires - Salta, 3: Rosario - Buenos Aires, 4: Mar Del Plata - Mendoza")
	leer optionRuta
	mientras (optionRuta<1 o optionRuta>4)
		Escribir ("Opción ingresada incorrecta, vuelva a ingresarla")
		escribir ("Ingrese el número de la ruta en la que desea buscar: 1: Buenos Aires - Bariloche, 2: Buenos Aires - Salta, 3: Rosario - Buenos Aires, 4: Mar Del Plata - Mendoza")
		leer optionRuta
	FinMientras
	
	escribir ("Ingrese la forma en que quiere mostrarlos: 1-Ascendente, 2-Descendente")
	leer optionOrdenamiento
	mientras (optionOrdenamiento<1 o optionOrdenamiento>2)
		escribir ("Ingrese la forma en que quiere mostrarlos: 1-Ascendente, 2-Descendente")
		leer optionOrdenamiento
	FinMientras
	Segun optionRuta Hacer
		1:
			MuestraPasajeros(bsas_bariloche,dimColumnas,dimFila1,optionOrdenamiento)
		2:
			MuestraPasajeros(bsas_salta,dimColumnas,dimFila1,optionOrdenamiento)
		3:
			MuestraPasajeros(ros_bsas,dimColumnas,dimFila2,optionOrdenamiento)
		4:
			MuestraPasajeros(mardel_mendoza,dimColumnas,dimFila2,optionOrdenamiento)
			
		De Otro Modo:
			Escribir ("Opción ingresada errónea")
			
	Fin Segun
FinSubProceso

SubProceso MuestraPasajeros(array,dimColumnas,dimFila,optionOrdenamiento)
	
	si (optionOrdenamiento==1)
		
		para i<-0 hasta dimFila-1
			escribir Sin Saltar "Nombre y apellido: "
			escribir array[i,1]
		FinPara
	FinSi
	
	si (optionOrdenamiento==2)
		
		para i<-dimFila-1 hasta 0 Con Paso -1
			escribir Sin Saltar "Nombre y apellido: "
			escribir array[i,1]
		FinPara
	FinSi
	
FinSubProceso






//PUNTO 5 MUESTRA DE PASAJES VENDIDOS Y PROMEDIO

SubProceso listados(contRuta1, contRuta2, contRuta3, contRuta4,bsas_bariloche, bsas_salta, ros_bsas, mardel_mendoza,dimColumnas,dimFila1, dimFila2)
	definir optionRuta, optionCantiPorcentaje Como Entero
	definir PromedioRuta1, PromedioRuta2, PromedioRuta3, PromedioRuta4, contRuta1Real, contRuta2Real, contRuta3Real, contRuta4Real Como Real
	PromedioRuta1 = 0
	PromedioRuta2 = 0
	PromedioRuta3 = 0
	PromedioRuta4 = 0
	contRuta1Real = contRuta1
	contRuta2Real = contRuta2
	contRuta3Real = contRuta3
	contRuta4Real = contRuta4
	
	escribir ("Ingrese la forma en que quiere la lista: 1-Cantidad pasajes vendidos, 2-Porcentaje pasajes vendidos")
	leer optionOrdenamiento
	mientras (optionOrdenamiento<1 o optionOrdenamiento>2)
		escribir("Opcion ingresada incorrecta")
		escribir ("Ingrese la forma en que quiere la lista: 1-Cantidad pasajes vendidos, 2-Porcentaje pasajes vendidos")
		leer optionOrdenamiento
	FinMientras
	
	si (optionOrdenamiento==1)
		
		
		escribir ("Cantidad de pasajes vendidos para la ruta Buenos Aires - Bariloche: "), contRuta1
		escribir ("Cantidad de pasajes vendidos para la ruta Buenos Aires - Salta: "), contRuta2
		escribir ("Cantidad de pasajes vendidos para la ruta Rosario - Buenos Aires: "), contRuta3
		escribir ("Cantidad de pasajes vendidos para la ruta Mar del Plata - Mendoza: "), contRuta4
		
	SiNo
		escribir ("Porcentaje de pasajes vendidos para la ruta Buenos Aires - Bariloche: "), (contRuta1Real/dimFila1)*100, "%"
		escribir ("Porcentaje de pasajes vendidos para la ruta Buenos Aires - Salta: "), (contRuta2Real/dimFila1)*100, "%"
		escribir ("Porcentaje de pasajes vendidos para la ruta Rosario - Buenos Aires: "), (contRuta3Real/dimFila2)*100, "%"
		escribir ("Porcentaje de pasajes vendidos para la ruta Mar del Plata - Mendoza: "), (contRuta4Real/dimFila2)*100, "%"
	FinSi
FinSubProceso