require_relative 'livro'
require_relative 'estoque'

estoque = Estoque.new
algoritmos = Livro.new("Opa", 10, 2021, true)
arquitetura = Livro.new("Opa2", 10, 2021, true)
programmer = Livro.new("Programmer", 10, 2020, true)
estoque <<  algoritmos
puts estoque.maximo_necessario
estoque <<  arquitetura
puts estoque.maximo_necessario
estoque <<  programmer
puts estoque.maximo_necessario

estoque.remove(algoritmos)
puts estoque.maximo_necessario