require_relative '../model/Generador_De_Salida'

class Formateador

	def initialize
        @generador_de_salida = Generador_De_Salida.new
    end

    def realizar_operacion(array_de_informacion)

        formato = array_de_informacion[1][1]
        caracteristico_del_formato = determinar_caracteristico_del_formato(formato)

        array_de_informacion[1][1] = caracteristico_del_formato

        @generador_de_salida.realizar_operacion(array_de_informacion)

    end

    def get_sucesor
        return @generador_de_salida
    end

	def determinar_caracteristico_del_formato(formato)

		caracteristico_del_formato = nil

		if formato == "--format=pretty"

			#El caracteristico del formato 'pretty' es el espacio.
			caracteristico_del_formato = " "

		else

			#El caracteristico del formato 'quiet' es el salto de linea.
			caracteristico_del_formato = "\n"

		end

		return caracteristico_del_formato

	end

end