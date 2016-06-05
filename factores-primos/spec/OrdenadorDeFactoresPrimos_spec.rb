require 'rspec'
require_relative '../model/OrdenadorDeFactoresPrimos'

describe OrdenadorDeFactoresPrimos do

  it 'Que devuelva [2,2,2,5] cuando se pide ordenar [2,2,2,5] de manera ASCENDENTE' do
  	ordenadorDeFactoresPrimos = OrdenadorDeFactoresPrimos.new
  	expect(ordenadorDeFactoresPrimos.ordenar([2,2,2,5], "--sort:asc")).to eq [2,2,2,5]
  end

  it 'Que devuelva [5,2,2,2] cuando se pide ordenar [2,2,2,5] de manera DESCENDENTE' do
  	ordenadorDeFactoresPrimos = OrdenadorDeFactoresPrimos.new
  	expect(ordenadorDeFactoresPrimos.ordenar([2,2,2,5], "--sort:des")).to eq [5,2,2,2]
  end

end