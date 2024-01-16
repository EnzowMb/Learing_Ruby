require_relative 'livro'
require_relative 'estoque'

estoque = Estoque.new
algoritmos = Livro.new("Opa", 10, 2021, true, "editora", "livro")
arquitetura = Livro.new("Opa2", 10, 2021, true, "editora", "livro")
programmer = Livro.new("Programmer", 10, 2020, true, "editora", "livro")
estoque <<  algoritmos
puts estoque.maximo_necessario
estoque <<  arquitetura
puts estoque.maximo_necessario
estoque <<  programmer
puts estoque.maximo_necessario

estoque.vende(algoritmos)
estoque.vende(programmer)
estoque.vende(programmer)

puts estoque.livro_que_mais_vendeu_por_titulo.titulo
revistona = Livro.new("Revista de Ruby", 10, 2012, true, "Revistas", "revista")
estoque.vende(revistona)
puts estoque.revista_que_mais_vendeu_por_titulo.titulo