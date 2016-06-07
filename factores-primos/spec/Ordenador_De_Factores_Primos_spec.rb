require 'rspec'
require_relative '../model/Ordenador_De_Factores_Primos'

describe Ordenador_De_Factores_Primos do

  it 'Que devuelva [2,2,2,5] cuando se pide ordenar [2,2,2,5] de manera ASCENDENTE' do
  	ordenador_de_factores_primos = Ordenador_De_Factores_Primos.new
  	expect(ordenador_de_factores_primos.ordenar([2,2,2,5], "--sort:asc")).to eq [2,2,2,5]
  end

  it 'Que devuelva [5,2,2,2] cuando se pide ordenar [2,2,2,5] de manera DESCENDENTE' do
  	ordenador_de_factores_primos = Ordenador_De_Factores_Primos.new
  	expect(ordenador_de_factores_primos.ordenar([2,2,2,5], "--sort:des")).to eq [5,2,2,2]
  end

  it 'Que devuelva [1,2,3,4,5] cuando se pide ordenar [3,4,5,1,2] de manera ASCENDENTE' do
  	ordenador_de_factores_primos = Ordenador_De_Factores_Primos.new
  	expect(ordenador_de_factores_primos.ordenar([3,4,5,1,2], "--sort:asc")).to eq [1,2,3,4,5]
  end

  it 'Que devuelva [5,4,3,2,1] cuando se pide ordenar [3,4,5,1,2] de manera DESCENDENTE' do
  	ordenador_de_factores_primos = Ordenador_De_Factores_Primos.new
  	expect(ordenador_de_factores_primos.ordenar([3,4,5,1,2], "--sort:des")).to eq [5,4,3,2,1]
  end

  it 'Que devuelva [-1,0,1] cuando se pide ordenar [1,-1,0] de manera ASCENDENTE' do
  	ordenador_de_factores_primos = Ordenador_De_Factores_Primos.new
  	expect(ordenador_de_factores_primos.ordenar([1,-1,0], "--sort:asc")).to eq [-1,0,1]
  end

end