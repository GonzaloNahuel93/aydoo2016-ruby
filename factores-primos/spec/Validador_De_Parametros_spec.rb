require 'rspec'
require_relative '../model/Validador_De_Parametros'

describe Validador_De_Parametros do

  it 'Que devuelva TRUE cuando los parametros son todos validos' do
  	validador_de_parametros = Validador_De_Parametros.new
    parametros = ["--format=pretty", "--sort:des", ""]

  	expect(validador_de_parametros.parametros_validos?(parametros)).to be_truthy
  end

  it 'Que devuelva FALSE cuando el ordenamiento insertado es invalido' do
  	validador_de_parametros = Validador_De_Parametros.new
    parametros = ["--format=pretty", "--sort:cualquiera", ""]

  	expect(validador_de_parametros.parametros_validos?(parametros)).to be_falsey
  end

  it 'Que devuelva TRUE cuando se vuelven a colocar otra combinacion de parametros validos' do
  	validador_de_parametros = Validador_De_Parametros.new
    parametros = ["--format=quiet", "--sort:asc", "salida.txt"]

  	expect(validador_de_parametros.parametros_validos?(parametros)).to be_truthy
  end

  it 'Que devuelva FALSE cuando se pide como salida un archivo con formato .doc' do
  	validador_de_parametros = Validador_De_Parametros.new
    parametros = ["--format=quiet", "--sort:des", "salida.doc"]

  	expect(validador_de_parametros.parametros_validos?(parametros)).to be_falsey
  end

  it 'Que devuelva TRUE cuando se vuelven a colocar otra combinacion de parametros validos' do
  	validador_de_parametros = Validador_De_Parametros.new
    parametros = ["--format=quiet", "--sort:asc", ""]

  	expect(validador_de_parametros.parametros_validos?(parametros)).to be_truthy
  end

  it 'Que devuelva FALSE cuando el formato insertado es invalido' do
    validador_de_parametros = Validador_De_Parametros.new
    parametros = ["--format=arcoiris", "--sort:asc", ""]

    expect(validador_de_parametros.parametros_validos?(parametros)).to be_falsey
  end

  it 'Que devuelva FALSE cuando el formato y el ordenamiento insertados son invalidos' do
    validador_de_parametros = Validador_De_Parametros.new
    parametros = ["--format=arcoiris", "--sort:unicornio", ""]

    expect(validador_de_parametros.parametros_validos?(parametros)).to be_falsey
  end

end