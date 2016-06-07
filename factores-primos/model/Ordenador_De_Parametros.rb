require_relative '../model/Validador_De_Parametros'

class Ordenador_De_Parametros

	def initialize
		@array_de_parametros_ordenados = []
		@validador_de_parametros = Validador_De_Parametros.new
	end

	def realizar_operacion(array_de_informacion)
		array_de_informacion = ordenar(array_de_informacion)
		@validador_de_parametros.realizar_operacion(array_de_informacion)
	end

	def get_sucesor
		return @validador_de_parametros
	end

	def ordenar(array_de_parametros)

		#Convencion determinada: 1-Numero a factorizar, 2-Formato, 3-Ordenamiento, 4-Archivo de salida (Opcional).
		@array_de_parametros_ordenados = [array_de_parametros[0], "", "", ""]
		@array_de_parametros_ordenados = get_parametros_ordenados(array_de_parametros, @array_de_parametros_ordenados)

		return @array_de_parametros_ordenados

	end

	#Metodo privado get_parametros_ordenados
	private
	def get_parametros_ordenados(array_de_parametros, array_de_parametros_ordenados)

		for i in 0...(array_de_parametros.length)

			parametro_actual = array_de_parametros[i]

			agregar_formato(parametro_actual.downcase, array_de_parametros_ordenados)
			agregar_ordenamiento(parametro_actual.downcase, array_de_parametros_ordenados)
			agregar_nombre_de_archivo_de_salida(parametro_actual, array_de_parametros_ordenados)

		end

		agregar_datos_faltantes(array_de_parametros_ordenados)

		return array_de_parametros_ordenados

	end

	#Metodo privado agregar_formato
	private
	def agregar_formato(parametro, array_de_parametros_ordenados)

		hay_formato = /--format=/.match(parametro)

		if hay_formato
		   array_de_parametros_ordenados[1] = parametro
		end

	end

	#Metodo privado agregar_ordenamiento
	private
	def agregar_ordenamiento(parametro, array_de_parametros_ordenados)

		hay_ordenamiento = /--sort:/.match(parametro)

		if hay_ordenamiento
		   array_de_parametros_ordenados[2] = parametro
		end

	end

	#Metodo privado agregar_nombre_de_archivo_de_salida
	private
	def agregar_nombre_de_archivo_de_salida(parametro, array_de_parametros_ordenados)

		hay_archivo_de_salida = /--output-file=/.match(parametro.downcase)

		if hay_archivo_de_salida

			descomposicion_del_parametro = parametro.split("=")
			nombre_del_archivo = descomposicion_del_parametro[1]

			array_de_parametros_ordenados[3] = nombre_del_archivo

		end

	end

	#Metodo privado agregar_datos_faltantes
	private
	def agregar_datos_faltantes(array_de_parametros_ordenados)

		if array_de_parametros_ordenados[1] == ""
		   array_de_parametros_ordenados[1] = "--format=pretty"
		end

		if array_de_parametros_ordenados[2] == ""
		   array_de_parametros_ordenados[2] = "--sort:asc"
		end

	end

end