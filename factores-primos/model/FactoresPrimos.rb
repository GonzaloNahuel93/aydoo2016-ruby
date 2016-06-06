require_relative '../model/OrdenadorDeFactoresPrimos'

class FactoresPrimos

    def initialize
        @ordenadorDeFactoresPrimos = OrdenadorDeFactoresPrimos.new
    end

    def realizarOperacion(arrayDeInformacion)

        parametros = arrayDeInformacion

        numeroAFactorizar = parametros[0]
        factoresPrimosDelNumero = factorizar(numeroAFactorizar)

        #Aca ya queda un array multidimensional ==> POSICION 0: Esta el array de factores primos del numero, POSICION 1: Esta el array de parametros
        #Donde el array de parametros contiene:
        #POSICION 0: Numero a factorizar.
        #POSICION 1: Formato.
        #POSICION 2: Ordenamiento.
        #POSICION 3: Archivo de salida (Si hay)
        arrayDeInformacion = [factoresPrimosDelNumero, parametros] 

        @ordenadorDeFactoresPrimos.realizarOperacion(arrayDeInformacion)

    end

    def getSucesor
        return @ordenadorDeFactoresPrimos
    end

    def factorizar(numero)

        #El Array que tendra los factores primos, al principio estara vacio.
        factoresPrimos = []

        n = 2

        while numero >= 2

    	   if numero % n == 0
    	       factoresPrimos.push n
    	       numero = numero / n
    	   else
    	       n += 1
    	   end

        end

        return factoresPrimos

    end

end