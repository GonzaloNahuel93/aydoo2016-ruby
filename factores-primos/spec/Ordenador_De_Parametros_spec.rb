require 'rspec'
require_relative '../model/Ordenador_De_Parametros'

describe Ordenador_De_Parametros do

  it 'Que devuelva los parametros ordenados acorde a la convencion determinada' do
  	ordenador_de_parametros = Ordenador_De_Parametros.new
  	expect(ordenador_de_parametros.ordenar(["1","--format=pretty","--output-file=Archivo.txt","--sort:des"])).to eq ["1","--format=pretty","--sort:des","Archivo.txt"]
  end

  it 'Que devuelva los parametros ordenados acorde a la convencion determinada cuando se colocan formato y ordenamiento ordenados sin pedir archivo' do
  	ordenador_de_parametros = Ordenador_De_Parametros.new
  	expect(ordenador_de_parametros.ordenar(["2","--format=quiet","--sort:asc"])).to eq ["2","--format=quiet","--sort:asc",""]
  end

  it 'Que devuelva los parametros ordenados cuando se colocan parametros correctos pero mezclando mayusculas y minusculas' do
  	ordenador_de_parametros = Ordenador_De_Parametros.new
  	expect(ordenador_de_parametros.ordenar(["1","--FormaT=PRETTY","--OUTPUT-file=SALIDA.txt","--SorT:DES"])).to eq ["1","--format=pretty","--sort:des","SALIDA.txt"]
  end

  it 'Que devuelva los parametros ordenados completando la informacion faltante de formato y ordenamiento' do
  	ordenador_de_parametros = Ordenador_De_Parametros.new
  	expect(ordenador_de_parametros.ordenar(["1","--output-file=archivo.txt"])).to eq ["1","--format=pretty","--sort:asc","archivo.txt"]
  end

  it 'Que devuelva los parametros ordenados con los formatos y ordenamientos por default cuando se colocan formatos y ordenamientos invalidos' do
  	ordenador_de_parametros = Ordenador_De_Parametros.new
  	expect(ordenador_de_parametros.ordenar(["1","--format=arcoiris","--output-file=factoresPrimos.txt","--sort:unicornio"])).to eq ["1","--format=pretty","--sort:asc","factoresPrimos.txt"]
  end

end