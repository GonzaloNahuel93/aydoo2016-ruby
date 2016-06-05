class OrdenadorDeFactoresPrimos

	def ordenar(factoresPrimos, criterioDeOrden)

		if criterioDeOrden == "--sort:des"

			factoresPrimos.sort!
			factoresPrimos.reverse!

		end

		return factoresPrimos

	end

end