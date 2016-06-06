require_relative '../model/OrdenadorDeParametros'

parametros = ARGV

ordenadorDeParametros = OrdenadorDeParametros.new
ordenadorDeParametros.realizarOperacion(parametros)