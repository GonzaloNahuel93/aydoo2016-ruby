require_relative '../model/GeneradorDeSalida'

class Formateador

	def initialize
        @generadorDeSalida = GeneradorDeSalida.new
    end

    def realizarOperacion(arrayDeInformacion)

        formato = arrayDeInformacion[1][1]
        caracteristicoDelFormato = determinarCaracteristicoDelFormato(formato)

        arrayDeInformacion[1][1] = caracteristicoDelFormato

        @generadorDeSalida.realizarOperacion(arrayDeInformacion)

    end

    def getSucesor
        return @generadorDeSalida
    end

	def determinarCaracteristicoDelFormato(formato)

		caracteristicoDelFormato = nil

		if formato == "--format=pretty"

			#El caracteristico del formato 'pretty' es el espacio.
			caracteristicoDelFormato = " "

		else

			#El caracteristico del formato 'quiet' es el salto de linea.
			caracteristicoDelFormato = "\n"

		end

		return caracteristicoDelFormato

	end

end