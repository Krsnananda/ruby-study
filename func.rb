#!/usr/bin/ruby

$buffer = [0, 1] # Vetor com os resultados ja processados do fibbonacci

# Função que vai gerar o fibonacci
def fibonacci(posicao)
  if posicao <= $buffer.length then
    return $buffer[posicao - 1].to_s
  end

  $buffer[$buffer.length] = $buffer[$buffer.length - 1] + $buffer[$buffer.length - 2]
  return fibonacci(posicao)
end

while true do
  puts "Me diz qual numero de fibonacci tu quer"
  puts "Numero de fibo na posicao: " + fibonacci(gets.chomp.to_i)
end

