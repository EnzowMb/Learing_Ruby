def boasVindas
    puts 'Bem vindo ao jogo de adivinhação!'
    puts 'Qual o seu nome?'
    @name = gets
end

def definirNumero
    puts "Olá #{@name}Começaremos o jogo para você!"
    puts "Escolha um numero entre 1 a 200"
    return numeroSorteado = 143
end

def pedeNumero(tentativa, limiteDeTentativas)
    puts "Tentativa " + tentativa.to_s + " de " + limiteDeTentativas.to_s
    chute = gets
    puts "Você chutou #{@chute}"
    chute.to_i #não precisa por return se é na ultima linha!
end

def verificaAcerto(chute, sorteado)
    @acertou = chute == sorteado
    if @acertou
        puts "Acertou"
        return true
    end
    @maior = sorteado > chute
        if @maior
            puts 'Numero é maior'
        else
            puts "Numero é menor"
        end
    false
end

boasVindas
definirNumero
sorteado = definirNumero
limiteDeTentativas = 5

for tentativa in 1..limiteDeTentativas
chute = pedeNumero(tentativa, limiteDeTentativas)
break if verificaAcerto(chute, sorteado)

end