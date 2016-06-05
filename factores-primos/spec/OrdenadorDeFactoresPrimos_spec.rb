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

  it 'Que devuelva [1,2,3,4,5] cuando se pide ordenar [3,4,5,1,2] de manera ASCENDENTE' do
  	ordenadorDeFactoresPrimos = OrdenadorDeFactoresPrimos.new
  	expect(ordenadorDeFactoresPrimos.ordenar([3,4,5,1,2], "--sort:asc")).to eq [1,2,3,4,5]
  end

  it 'Que devuelva [5,4,3,2,1] cuando se pide ordenar [3,4,5,1,2] de manera DESCENDENTE' do
  	ordenadorDeFactoresPrimos = OrdenadorDeFactoresPrimos.new
  	expect(ordenadorDeFactoresPrimos.ordenar([3,4,5,1,2], "--sort:des")).to eq [5,4,3,2,1]
  end

end