require_relative '../model/Factores_Primos'

class Validador_De_Parametros

	def initialize
		@factores_primos = Factores_Primos.new
	end

	def realizar_operacion(array_de_informacion)

		formato = array_de_informacion[1]
		ordenamiento = array_de_informacion[2]
		salida = array_de_informacion[3]
		parametros = [formato, ordenamiento, salida]

		parametros_son_validos = parametros_validos?(parametros)

		if parametros_son_validos
		   @factores_primos.realizar_operacion(array_de_informacion)
		end

	end

	def get_sucesor
		return @factores_primos
	end

	def parametros_validos?(parametros)

		formato_valido = formato_es_valido?(parametros[0])
		ordenamiento_valido = ordenamiento_es_valido?(parametros[1])
		formato_de_archivo_valido = formato_de_archivo_es_valido?(parametros[2])

		parametros_validos = formato_valido && ordenamiento_valido && formato_de_archivo_valido

		return parametros_validos

	end

	#Metodo privado formato_es_valido?
	private
	def formato_es_valido?(formato)

		valido = (formato == "--format=pretty") || (formato == "--format=quiet")

		if !valido
		   puts "- El formato pedido es invalido. Las opciones son: pretty o quiet"
		end

		return valido

	end

	#Metodo privado ordenamiento_es_valido?
	private
	def ordenamiento_es_valido?(ordenamiento)

		valido = (ordenamiento == "--sort:asc") || (ordenamiento == "--sort:des")

		if !valido
		   puts "- El ordenamiento pedido es invalido. Las opciones son: asc o des"
		end

		return valido

	end

	#Metodo privado formato_de_archivo_es_valido?
	private
	def formato_de_archivo_es_valido?(nombre_de_archivo)

		valido = true

		if nombre_de_archivo != ""
		   valido = /.txt/.match(nombre_de_archivo)
		end

		if !valido
		   puts "- La salida pedida es invalida. Solo se permiten archivos .txt"
		end

		return valido

	end

end