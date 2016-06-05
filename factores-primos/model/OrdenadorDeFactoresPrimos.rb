class OrdenadorDeFactoresPrimos

	def ordenar(factoresPrimos, criterioDeOrden)

		if criterioDeOrden == "--sort:desc"

			factoresPrimos.sort!
			factoresPrimos.reverse!

		end

		return factoresPrimos

	end

end