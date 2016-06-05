class FactoresPrimos

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