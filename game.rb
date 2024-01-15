def boasVindas
    puts 'Bem vindo ao jogo de adivinhação!'
    puts 'Qual o seu nome?'
    @name = gets.strip
end

def escolhaDificuldade
    puts 'Escolha uma dificuldade entre 1(fácil) e 5(difícil)'
    dificuldade = gets.to_i
end

def definirNumero(dificuldade)
    case dificuldade
    when 1
        maximo = 30
    when 2
        maximo = 60
    when 3
        maximo = 90
    when 4
        maximo = 150
    else
        maximo = 200
    end
    puts "Olá #{@name} começaremos o jogo para você!\n\n"
    puts "Escolha um numero entre 1 a #{maximo}"
    numero = rand(maximo) + 1
end

def pedeNumero(chutes, tentativa, limiteDeTentativas)
    puts "\nTentativa #{tentativa} de " + limiteDeTentativas.to_s
    puts "Chutes até agora: " + chutes.to_s
    chute = gets.strip
    puts "Você chutou " + chute
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
dificuldade = escolhaDificuldade
sorteado = definirNumero(dificuldade)
chutes = []
total_chute = 0
limiteDeTentativas = 5

for tentativa in 1..limiteDeTentativas
chute = pedeNumero(chutes, tentativa, limiteDeTentativas)
chutes << chute #Coloca dentro no array na ultima opção -> <<
break if verificaAcerto(chute, sorteado)

end