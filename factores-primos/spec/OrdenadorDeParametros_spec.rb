require 'rspec'
require_relative '../model/OrdenadorDeParametros'

describe OrdenadorDeParametros do

  it 'Que devuelva los parametros ordenados acorde a la convencion determinada' do
  	ordenadorDeParametros = OrdenadorDeParametros.new
  	expect(ordenadorDeParametros.ordenar(["1","--format=pretty","--output-file=Archivo.txt","--sort:des"])).to eq ["1","--format=pretty","--sort:des","Archivo.txt"]
  end

end