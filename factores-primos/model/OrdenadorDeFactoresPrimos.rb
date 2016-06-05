class OrdenadorDeFactoresPrimos

	def ordenar(factoresPrimos, criterioDeOrden)

		factoresPrimos.sort!

		if criterioDeOrden == "--sort:des"
		   factoresPrimos.reverse!
		end

		return factoresPrimos

	end

end