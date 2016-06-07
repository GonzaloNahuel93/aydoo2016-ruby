require_relative '../model/Unidad_De_Proceso'

class Generador_De_Salida < Unidad_De_Proceso

    def realizar_operacion(array_de_informacion)

        factores_primos = array_de_informacion[0]
        caracteristico_del_formato = array_de_informacion[1][1]
        salida = array_de_informacion[1][3]

        get_salida(factores_primos, caracteristico_del_formato, salida)

    end

    def get_sucesor
        return nil
    end

	def get_salida(factores_primos, formato, salida)

		if salida != ""

			generar_archivo(factores_primos, formato, salida)
			puts "- ¡Archivo creado con exito!"

		else

			imprimir_por_consola(factores_primos, formato)

		end

	end

	#Metodo privado generar_archivo
	private
	def generar_archivo(factores_primos, formato, salida)

		File.open(salida, 'w') do |archivo|

			for i in 0...(factores_primos.length)
				archivo.write("#{factores_primos[i]}#{formato}")
			end

		end

	end

	#Metodo privado imprimir_por_consola
	private
	def imprimir_por_consola(factores_primos, formato)

		for i in 0...(factores_primos.length)
			print "#{factores_primos[i]}#{formato}"
		end

		puts " "

	end

end