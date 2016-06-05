require 'rspec' 
require_relative '../model/FactoresPrimos'

describe FactoresPrimos do

  it 'Que tire [2] cuando se pide factorizar 2' do
  	factoresPrimos = FactoresPrimos.new
  	expect(factoresPrimos.factorizar(2)).to eq [2]
  end

  it 'Que tire [2,5] cuando se pide factorizar 10' do
    factoresPrimos = FactoresPrimos.new
    expect(factoresPrimos.factorizar(10)).to eq [2,5]
  end

  it 'Que tire [2,2,5,5] cuando se pide factorizar 100' do
  	factoresPrimos = FactoresPrimos.new
  	expect(factoresPrimos.factorizar(100)).to eq [2,2,5,5]
  end

end