require_relative '../model/Formateador'

class Ordenador_De_Factores_Primos

	def initialize
        @formateador = Formateador.new
    end

    def realizar_operacion(array_de_informacion)

        factores_primos = array_de_informacion[0]
        criterio_de_orden = array_de_informacion[1][2]
        factores_primos_ordenados = ordenar(factores_primos, criterio_de_orden)

        #En la POSICION 0 estaban los factores primos del numero, pero aca se colocan de nuevo acorde al criterio de orden pedido
        array_de_informacion[0] = factores_primos_ordenados

        @formateador.realizar_operacion(array_de_informacion)

    end

    def get_sucesor
        return @formateador
    end

	def ordenar(factores_primos, criterio_de_orden)

		factores_primos.sort!

		if criterio_de_orden == "--sort:des"
		   factores_primos.reverse!
		end

		return factores_primos

	end

end