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

SubProceso inicioArreglos(bsas_bariloche Por Referencia, bsas_salta Por Referencia, ros_bsas Por Referencia, mardel_mendoza Por Referencia,dimFila1,dimFila2,dimColumnas)
    Para i<-0 Hasta dimFila1-1 Con Paso 1 Hacer
        Para j<-0 Hasta dimColumnas-1 Con Paso 1 Hacer
            bsas_bariloche[i,j]="0"
        Fin Para
    Fin Para
    Para i<-0 Hasta dimFila1-1 Con Paso 1 Hacer
        Para j<-0 Hasta dimColumnas-1 Con Paso 1 Hacer
            bsas_salta[i,j]="0"
        Fin Para
    Fin Para
    Para i<-0 Hasta dimFila2-1 Con Paso 1 Hacer
        Para j<-0 Hasta dimColumnas-1 Con Paso 1 Hacer
            ros_bsas[i,j]="0"
        Fin Para
    Fin Para
    Para i<-0 Hasta dimFila2-1 Con Paso 1 Hacer
        Para j<-0 Hasta dimColumnas-1 Con Paso 1 Hacer
            mardel_mendoza[i,j]="0"
        Fin Para
    Fin Para
FinSubProceso

SubProceso ventaPasaje(contRuta1 Por Referencia, contRuta2 Por Referencia, contRuta3 Por Referencia, contRuta4 Por Referencia,bsas_bariloche, bsas_salta, ros_bsas, mardel_mendoza,dimColumnas,dimFila1, dimFila2,nombreApellido, dni, tel, equipajeBodega, numPasajeroFrec)
    rutas(contRuta1, contRuta2, contRuta3, contRuta4)
    escribir ("Ingrese la opción de la ruta deseada")
    leer optionRuta
    mientras (optionRuta<1 o optionRuta>4)
        escribir ("Opción ingresada incorrecta, vuelva a elegir la opción")
        rutas(contRuta1, contRuta2, contRuta3, contRuta4)
        leer optionRuta
    FinMientras
    Segun optionRuta Hacer
        1:
            ReservaPasaje1(contRuta1,bsas_bariloche,dimColumnas,dimFila1,nombreApellido, dni, tel, equipajeBodega, numPasajeroFrec)
			contRuta1 = contRuta1 + 1

        2:
            ReservaPasaje2(bsas_salta,dimColumnas,dimFila1,nombreApellido, dni, tel, equipajeBodega, numPasajeroFrec)
			contRuta2 = contRuta2 + 1
            
        3:
            ReservaPasaje3(ros_bsas,dimColumnas,dimFila2,nombreApellido, dni, tel, equipajeBodega, numPasajeroFrec)
			contRuta3 = contRuta3 + 1
            
        4:
            ReservaPasaje4(mardel_mendoza,dimColumnas,dimFila2,nombreApellido, dni, tel, equipajeBodega, numPasajeroFrec)
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

SubProceso ReservaPasaje1(contRuta1,bsas_bariloche Por Referencia,dimColumnas,dimFila1,nombreApellido, dni, tel, equipajeBodega, numPasajeroFrec)
	para i<-0 hasta contRuta1 hacer
	para j<-0 hasta dimColumnas-1 hacer
		Segun j Hacer
			0:
				
				bsas_bariloche[contRuta1,j] = ConvertirATexto(contRuta1)
			1:
				escribir ("Ingrese nombre y apellido")
				leer nombreApellido
				bsas_bariloche[contRuta1,j] = nombreapellido
			2:
				escribir ("Ingrese dni")
				leer dni
				bsas_bariloche[contRuta1,j] = dni
			3:
				escribir ("Ingrese telefono")
				leer tel
				bsas_bariloche[contRuta1,j] = tel
			4:
				escribir ("¿LLeva equipaje en bodega? Verdadero/Falso")
				leer equipajeBodega
				bsas_bariloche[contRuta1,j] = equipajeBodega
			5:
				escribir ("Ingrese número de pasajero frecuente")
				leer numPasajeroFrec
				bsas_bariloche[contRuta1,j] = numPasajeroFrec
			
		Fin Segun
	FinPara
	fin para
	
	para i<-0 hasta contRuta1
		
		para j<-0 hasta dimColumnas-1
			escribir bsas_bariloche[i,j]
		FinPara
	FinPara
FinSubProceso

SubProceso ReservaPasaje2(bsas_salta Por Referencia,dimColumnas,dimFila1,nombreApellido, dni, tel, equipajeBodega, numPasajeroFrec)
FinSubProceso

SubProceso ReservaPasaje3(ros_bsas Por Referencia,dimColumnas,dimFila2,nombreApellido, dni, tel, equipajeBodega, numPasajeroFrec)
FinSubProceso

SubProceso ReservaPasaje4(mardel_mendoza Por Referencia,dimColumnas,dimFila2,nombreApellido, dni, tel, equipajeBodega, numPasajeroFrec)
FinSubProceso




