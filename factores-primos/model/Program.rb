require_relative '../model/Ordenador_De_Parametros'

parametros = ARGV

ordenador_de_parametros = Ordenador_De_Parametros.new
ordenador_de_parametros.realizar_operacion(parametros)