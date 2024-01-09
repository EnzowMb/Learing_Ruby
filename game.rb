puts 'Bem vindo ao jogo de adivinhação!'
puts 'Qual o seu nome?'
@name = gets

puts
puts "Olá #{@name}Começaremos o jogo para você!"
puts "Escolha um numero entre 1 a 200"
@numeroSorteado = 143

@limiteDeTentativas = 5
for @tentativa in 1..@limiteDeTentativas
puts "Tentativa #{@tentativa} de #{@limiteDeTentativas}"
@chute = gets
puts "Você chutou #{@chute}"



@acertou = @chute.to_i == @numeroSorteado
if @acertou
    puts "Acertou"
    break
else
    @maior = @numeroSorteado > @chute.to_i
        if @maior
            puts 'Numero é maior'
        else
            puts "Numero é menor"
        end
end
end