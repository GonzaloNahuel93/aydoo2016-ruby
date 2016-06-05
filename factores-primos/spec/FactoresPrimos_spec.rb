require 'rspec' 
require_relative '../model/FactoresPrimos'

describe FactoresPrimos do

  it 'Que tire [2,5] cuando se pide factorizar 10' do
    factoresPrimos = FactoresPrimos.new
    expect(factoresPrimos.factorizar(10)).to eq [2,5]
  end

end