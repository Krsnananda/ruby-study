# gets.chomp retorna apenas o input que saiu do teclado
# .to_i converte float em int
# puts printa o valor na tela

print "Please enter the number you would like to FizzBuzz up to: "
maximum_number = gets.chomp.to_i

# Cria um loop começando por 1 até o número digitado
1.upto(maximum_number) do |current_number|
   # Se o valor é divisível por 3 e por 5 printa na tela "FizzBuzz"
   if current_number % 3 == 0 && current_number % 5 == 0
      puts "FizzBuzz"
   # O operador de módulo "%" divide o valor por 3, se o resultado for igual a zero então o valor é divisível por 3
   elsif current_number % 3 == 0
      puts "Fizz"
   # O operador de módulo "%" divide o valor por 5, se o resultado for igual a zero então o valor é divisível por 5
   elsif current_number % 5 == 0
      puts "Buzz"
   else
      puts current_number
   end
end