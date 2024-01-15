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

class Estoque
    attr_reader :livros

    def initialize
        @livros = []
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
end

algoritmos = Livro.new("Algoritmos", 100, 1998, true)
livro_para_newsletter algoritmos
estoque = Estoque.new
estoque.adiciona(algoritmos)
baratos = estoque.mais_barato_que(80)
baratos.each do |livro|
  puts livro.titulo
end
estoque.adiciona(Livro.new("Opa", 180, 1990, false))
puts "Total de livros: #{estoque.total}"
estoque.exporta_csv
estoque.livros.each do |livro|
    puts "O livro #{livro.titulo} possui reimpressão? " + (livro.possui_reimpressao? ? "Sim" : "Não")
end