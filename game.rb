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

boasVindas
definirNumero
sorteado = definirNumero

@limiteDeTentativas = 5
for @tentativa in 1..@limiteDeTentativas
puts "Tentativa #{@tentativa} de #{@limiteDeTentativas}"
@chute = gets
puts "Você chutou #{@chute}"



@acertou = @chute.to_i == sorteado
if @acertou
    puts "Acertou"
    break
else
    @maior = sorteado > @chute.to_i
        if @maior
            puts 'Numero é maior'
        else
            puts "Numero é menor"
        end
end
end