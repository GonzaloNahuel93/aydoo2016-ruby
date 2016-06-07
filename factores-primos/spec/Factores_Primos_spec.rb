require 'rspec' 
require_relative '../model/Factores_Primos'

describe Factores_Primos do

  it 'Que devuelva [2] cuando se pide factorizar 2' do
  	factores_primos = Factores_Primos.new
  	expect(factores_primos.factorizar(2)).to eq [2]
  end

  it 'Que devuelva [2,5] cuando se pide factorizar 10' do
    factores_primos = Factores_Primos.new
    expect(factores_primos.factorizar(10)).to eq [2,5]
  end

  it 'Que devuelva [2,2,5,5] cuando se pide factorizar 100' do
  	factores_primos = Factores_Primos.new
  	expect(factores_primos.factorizar(100)).to eq [2,2,5,5]
  end

  it 'Que devuelva [2,2,2,3,3,5] cuando se pide factorizar 360' do
  	factores_primos = Factores_Primos.new
  	expect(factores_primos.factorizar(360)).to eq [2,2,2,3,3,5]
  end

  it 'Que devuelva [2,2,2,5,5,5] cuando se pide factorizar 1000' do
  	factores_primos = Factores_Primos.new
  	expect(factores_primos.factorizar(1000)).to eq [2,2,2,5,5,5]
  end

end