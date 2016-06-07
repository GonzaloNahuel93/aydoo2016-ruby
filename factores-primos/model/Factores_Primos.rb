require_relative '../model/Ordenador_De_Factores_Primos'

class Factores_Primos

    def initialize
        @ordenador_de_factores_primos = Ordenador_De_Factores_Primos.new
    end

    def realizar_operacion(array_de_informacion)

        parametros = array_de_informacion

        numero_a_factorizar = parametros[0].to_i
        factores_primos_del_numero = factorizar(numero_a_factorizar)

        #Aca ya queda un array multidimensional ==> POSICION 0: Esta el array de factores primos del numero, POSICION 1: Esta el array de parametros
        #Donde el array de parametros contiene:
        #POSICION 0: Numero a factorizar.
        #POSICION 1: Formato.
        #POSICION 2: Ordenamiento.
        #POSICION 3: Archivo de salida (Si hay)
        array_de_informacion = [factores_primos_del_numero, parametros] 

        @ordenador_de_factores_primos.realizar_operacion(array_de_informacion)

    end

    def get_sucesor
        return @ordenador_de_factores_primos
    end

    def factorizar(numero)

        #El Array que tendra los factores primos, al principio estara vacio.
        factores_primos = []

        n = 2

        while numero >= 2

    	   if numero % n == 0
    	       factores_primos.push(n)
    	       numero = numero / n
    	   else
    	       n += 1
    	   end

        end

        return factores_primos

    end

end