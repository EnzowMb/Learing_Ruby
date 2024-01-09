puts 'Bem vindo ao jogo de adivinhação!'
puts 'Qual o seu nome?'
@name = gets

puts
puts "Olá #{@name}Começaremos o jogo para você!"
puts "Escolha um numero entre 1 a 200"
@numeroSorteado = 143
puts "Tentativa 1"
@chute = gets
puts "Você chutou #{@chute}"
if @chute.to_i == @numeroSorteado
    puts "Acertou"
else
    puts "Errou"
end