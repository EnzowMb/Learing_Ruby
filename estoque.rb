require_relative 'contador'

class Estoque
    attr_reader :livros

    def initialize
        @livros = []
        @livros.extend Contador
    end

    def adiciona(livro)
        @livros << livro if livro
    end

    def mais_barato_que(valor)
        @livros.select do |livros|
          livros.preco <= valor
        end
    end
    
    def total
        @livros.size
    end

    def exporta_csv
        @livros.each do |livro|
            puts livro.to_csv
        end
    end

    def << (livro)
        @livros << livro if livro
        self
    end
    
    def remove(livro)
        @livros.delete livro
    end
    
    def maximo_necessario
        @livros.maximo_necessario
    end
end