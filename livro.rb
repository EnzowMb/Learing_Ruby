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

