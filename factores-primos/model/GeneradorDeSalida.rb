class GeneradorDeSalida

	def getSalida(factoresPrimos, formato, salida)

		if salida != ""

			generarArchivo(factoresPrimos, formato, salida)

		else

			imprimirPorConsola(factoresPrimos, formato)

		end

	end

	#Metodo privado generarArchivo
	private
	def generarArchivo(factoresPrimos, formato, salida)

		File.open(salida, 'w') do |archivo|

			for i in 0...(factoresPrimos.length)
				archivo.write("#{factoresPrimos[i]}#{formato}")
			end

		end

	end

	#Metodo privado imprimirPorConsola
	private
	def imprimirPorConsola(factoresPrimos, formato)

		for i in (0...factoresPrimos.length)
			print "#{factoresPrimos[i]}#{formato}"
		end

		puts

	end

end