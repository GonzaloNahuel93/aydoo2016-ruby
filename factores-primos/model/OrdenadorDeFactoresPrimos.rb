require_relative '../model/Formateador'

class OrdenadorDeFactoresPrimos

	def initialize
        @formateador = Formateador.new
    end

    def realizarOperacion(arrayDeInformacion)

        factoresPrimos = arrayDeInformacion[0]
        criterioDeOrden = arrayDeInformacion[1][2]
        factoresPrimosOrdenados = ordenar(factoresPrimos, criterioDeOrden)

        #En la POSICION 0 estaban los factores primos del numero, pero aca se colocan de nuevo acorde al criterio de orden pedido
        arrayDeInformacion[0] = factoresPrimosOrdenados

        @formateador.realizarOperacion(arrayDeInformacion)

    end

    def getSucesor
        return @formateador
    end

	def ordenar(factoresPrimos, criterioDeOrden)

		factoresPrimos.sort!

		if criterioDeOrden == "--sort:des"
		   factoresPrimos.reverse!
		end

		return factoresPrimos

	end

end