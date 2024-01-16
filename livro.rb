class Livro
    attr_reader :titulo, :ano_lancamento, :preco
    def initialize(titulo, preco, ano_lancamento, possui_reimpressao)
      @titulo = titulo
      @ano_lancamento = ano_lancamento
      @preco = calcula_preco(preco)
      @possui_reimpressao = possui_reimpressao
    end
    
    def to_csv
      "#{@titulo},#{@ano_lancamento},#{@preco}"
    end

    def possui_reimpressao?
        @possui_reimpressao
    end
private

 def calcula_preco(base)
    if @ano_lancamento < 2000
      base * 0.7
    else
      base
    end
  end

end

def livro_para_newsletter(livro)
    if livro.ano_lancamento < 1999
       puts "Newsletter/Liquidacao"
       puts livro.titulo
       puts livro.preco
    end
end

module Contador
    def << (livro)
      push (livro)
      if @maximo_necessario.nil? || @maximo_necessario < size
        @maximo_necessario = size
      end
      self
    end
  
    attr_reader :maximo_necessario
  end

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