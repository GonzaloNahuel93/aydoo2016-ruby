require_relative '../model/FactoresPrimos'

class OrdenadorDeParametros

	def initialize
		@arrayDeParametrosOrdenados = []
		@factoresPrimos = FactoresPrimos.new
	end

	def realizarOperacion(arrayDeInformacion)

		arrayDeInformacion = ordenar(arrayDeInformacion)
		@factoresPrimos.realizarOperacion(arrayDeInformacion)

	end

	def getSucesor
		return @factoresPrimos
	end

	def ordenar(arrayDeParametros)

		#Convencion determinada: 1-Numero a factorizar, 2-Formato, 3-Ordenamiento, 4-Archivo de salida (Opcional).
		@arrayDeParametrosOrdenados = [arrayDeParametros[0], "", "", ""]
		@arrayDeParametrosOrdenados = getParametrosOrdenados(arrayDeParametros, @arrayDeParametrosOrdenados)

		return @arrayDeParametrosOrdenados

	end

	#Metodo privado getParametrosOrdenados
	private
	def getParametrosOrdenados(arrayDeParametros, arrayDeParametrosOrdenados)

		for i in 0...(arrayDeParametros.length)

			parametroActual = arrayDeParametros[i]

			agregarFormato(parametroActual.downcase, arrayDeParametrosOrdenados)
			agregarOrdenamiento(parametroActual.downcase, arrayDeParametrosOrdenados)
			agregarNombreDeArchivoDeSalida(parametroActual, arrayDeParametrosOrdenados)

		end

		agregarDatosFaltantes(arrayDeParametrosOrdenados)

		return arrayDeParametrosOrdenados

	end

	#Metodo privado agregarFormato
	private
	def agregarFormato(parametro, arrayDeParametrosOrdenados)

		formatoPretty = /--format=pretty/
		hayPretty = formatoPretty.match(parametro)

		formatoQuiet = /--format=quiet/
		hayQuiet = formatoQuiet.match(parametro)

		if hayPretty
		   arrayDeParametrosOrdenados[1] = hayPretty[0]
		elsif hayQuiet
		   arrayDeParametrosOrdenados[1] = hayQuiet[0]
		end

	end

	#Metodo privado agregarOrdenamiento
	private
	def agregarOrdenamiento(parametro, arrayDeParametrosOrdenados)

		ordenamientoAsc = /--sort:asc/
		hayAsc = ordenamientoAsc.match(parametro)

		ordenamientoDes = /--sort:des/
		hayDes = ordenamientoDes.match(parametro)

		if hayAsc
		   arrayDeParametrosOrdenados[2] = hayAsc[0]
		elsif hayDes
		   arrayDeParametrosOrdenados[2] = hayDes[0]
		end

	end

	#Metodo privado agregarNombreDeArchivoDeSalida
	private
	def agregarNombreDeArchivoDeSalida(parametro, arrayDeParametrosOrdenados)

		archivoDeSalida = /--output-file=/
		hayArchivoDeSalida = archivoDeSalida.match(parametro.downcase)

		txt = /.txt/
		esTxt = txt.match(parametro)

		if hayArchivoDeSalida && esTxt

			descomposicionDelParametro = parametro.split("=")
			nombreDelArchivo = descomposicionDelParametro[1]

			arrayDeParametrosOrdenados[3] = nombreDelArchivo

		end

	end

	#Metodo privado agregarDatosFaltantes
	private
	def agregarDatosFaltantes(arrayDeParametrosOrdenados)

		if arrayDeParametrosOrdenados[1] == ""
		   arrayDeParametrosOrdenados[1] = "--format=pretty"
		end

		if arrayDeParametrosOrdenados[2] == ""
		   arrayDeParametrosOrdenados[2] = "--sort:asc"
		end

	end

end