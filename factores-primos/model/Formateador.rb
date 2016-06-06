class Formateador

	def determinarCaracteristicoDelFormato(formato)

		caracteristicoDelFormato = nil

		if formato == "--format=pretty"

			#El caracteristico del formato 'pretty' es el espacio.
			caracteristicoDelFormato = " "

		else

			#El caracteristico del formato 'quiet' es el salto de linea.
			caracteristicoDelFormato = "\n"

		end

		return caracteristicoDelFormato

	end

end