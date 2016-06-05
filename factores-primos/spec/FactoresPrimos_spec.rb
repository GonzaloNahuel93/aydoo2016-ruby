require 'rspec' 
require_relative '../model/FactoresPrimos'

describe FactoresPrimos do

  it 'Que devuelva [2] cuando se pide factorizar 2' do
  	factoresPrimos = FactoresPrimos.new
  	expect(factoresPrimos.factorizar(2)).to eq [2]
  end

  it 'Que devuelva [2,5] cuando se pide factorizar 10' do
    factoresPrimos = FactoresPrimos.new
    expect(factoresPrimos.factorizar(10)).to eq [2,5]
  end

  it 'Que devuelva [2,2,5,5] cuando se pide factorizar 100' do
  	factoresPrimos = FactoresPrimos.new
  	expect(factoresPrimos.factorizar(100)).to eq [2,2,5,5]
  end

  it 'Que devuelva [2,2,2,3,3,5] cuando se pide factorizar 360' do
  	factoresPrimos = FactoresPrimos.new
  	expect(factoresPrimos.factorizar(360)).to eq [2,2,2,3,3,5]
  end

  it 'Que devuelva [2,2,2,5,5,5] cuando se pide factorizar 1000' do
  	factoresPrimos = FactoresPrimos.new
  	expect(factoresPrimos.factorizar(1000)).to eq [2,2,2,5,5,5]
  end

end