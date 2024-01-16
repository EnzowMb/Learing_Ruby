require_relative 'livro'
require_relative 'estoque'

estoque = Estoque.new
algoritmos = Livro.new("Opa", 10, 2021, true, "editora", "livro")
arquitetura = Livro.new("Opa2", 10, 2021, true, "editora", "livro")
programmer = Livro.new("Programmer", 10, 2020, true, "editora", "livro")

estoque <<  algoritmos <<  arquitetura <<  programmer <<  programmer

estoque.vende(algoritmos)
estoque.vende(programmer)
estoque.vende(programmer)


revistona = Livro.new("Revista de Ruby", 10, 2012, true, "Revistas", "revista")

estoque << revistona
puts estoque.total
estoque.vende(revistona)

puts estoque.livro_que_mais_vendeu_por_titulo(&:titulo).titulo
puts estoque.revista_que_mais_vendeu_por_titulo(&:titulo).titulo

online_arquitetura = Livro.new("Introdução a Arquitetura e Design de Software", 50, 2012, true, "editora", "ebook")

estoque << online_arquitetura
puts estoque.total

estoque.vende(online_arquitetura)

puts estoque.ebook_que_mais_vendeu_por_titulo(&:titulo).titulo

puts estoque.respond_to?(:ebook_que_mais_vendeu_por_titulo)