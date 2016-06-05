class FactoresPrimos

  def factorizar(numero)
    
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