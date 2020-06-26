# Enumerable methods

#  ====================================

# Select method
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.select { |friend| friend != 'Brian' }
 #=> ["Sharon", "Leo", "Leila", "Arun"]

#Reject
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.reject { |friend| friend == 'Brian' }
#=> ["Sharon", "Leo", "Leila", "Arun"]

# Select only if true
responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
responses.select { |person, response| response == 'yes'}
#=> {"Sharon"=>"yes", "Arun"=>"yes"}


# Each method =============================

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.each { |friend| puts "Hello, " + friend }

#=> Hello, Sharon
#=> Hello, Leo
#=> Hello, Leila
#=> Hello, Brian
#=> Hello, Arun

#=> ["Sharon", "Leo", "Leila", "Brian" "Arun"]


my_array = [1, 2]

my_array.each do |num|
  num *= 2 #multiplica por dois
  puts "The new number is #{num}."
end

#=> The new number is 2.
#=> The new number is 4.

#=> [1, 2]

# Each with hashes ===============================

my_hash = { "one" => 1, "two" => 2 }

# Produz chaves e valores como um array único
my_hash.each { |key, value| puts "#{key} is #{value}" }

one is 1
two is 2
#=> { "one" => 1, "two" => 2}

# Produz chaves e valores separadamente
my_hash.each { |pair| puts "the pair is #{pair}" }

the pair is ["one", 1]
the pair is ["two", 2]
#=> { "one" => 1, "two" => 2}

#  each_with_index ====================================

fruits = ["apple", "banana", "strawberry", "pineapple"]

# Retorna apenas strings com o index par. Ex: 0 e 2
fruits.each_with_index { |fruit, index| puts fruit if index.even? }

#=> apple
#=> strawberry
#=> ["apple", "banana", "strawberry", "pineapple"]

# map method ========================================

# Exemplo utilizando each (bad pattern)

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
shouting_at_friends = []

friends.each { |friend| shouting_at_friends.push(friend.upcase) }
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

shouting_at_friends #=> ['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']

# Exemplo utilizando map

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

# Substituindo strings

my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']

my_order.map { |item| item.gsub('medium', 'extra large') }
#=> ["extra large Big Mac", "extra large fries", "extra large milkshake"]

# Operações com int e map

salaries = [1200, 1500, 1100, 1800]

salaries.map { |salary| salary - 700 }
#=> [500, 800, 400, 1100]

#  Reduce method IMPORTANT =================================================

# Usando reduce para somar valores e retorno um único value

my_numbers = [5, 6, 7, 8]

my_numbers.reduce { |sum, number| sum + number }
#=> 26

# PS: Sum no primeiro bloco é o accumulator (armazena cada valor iterado, também é o valor retornado no final)
# number é cada valor dentro do array my_numbers, cada valor é iterado e somado ao próximo

# Definindo outro valor inicial ao accumulator, diferente de 0 (no caso 1000)
my_numbers = [5, 6, 7, 8]

my_numbers.reduce(1000) { |sum, number| sum + number }
#=> 1026

# Exemplo 2 - Reduce

votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end
#=> {"Bob's Dirty Burger Shack"=>2, "St. Mark's Bistro"=>1}

# O que está acontecendo a cada iteração:

# Iteration 0:
# result = {}
# Remember, this hash already has default values of 0, so result["Bob's Dirty Burger Shack"] = 0 and result["St. Mark's Bistro"] = 0
# Iteration 1:
# The method runs result["Bob's Dirty Burger Shack"] += 1
# result = {“Bob’s Dirty Burger Shack” => 1}
# Iteration 2:
# The method runs result["St. Mark's Bistro"] += 1
# result = {“Bob’s Dirty Burger Shack” => 1, “St. Mark’s Bistro” => 1}
# Iteration 3:
# The method runs result["Bob's Dirty Burger Shack"] += 1
# result = {“Bob’s Dirty Burger Shack” => 2, “St. Mark’s Bistro” => 1}

# Bang method ================================================

# Enquanto outros métodos como select e map geram novos arrays com os valores alterados porém preservam o array original
# O método bang altera o array original. É identificado pelo "!" no fim do método. Ex:

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map! { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

friends
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`


#  Retornando valores dos métodos ==================================

# Uma opção é por o resultado do método dentro de uma variável, e.g. invited_friends
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_friends = friends.select { |friend| friend != 'Brian' }

friends
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_friends
#=> ["Sharon", "Leo", "Leila", "Arun"]

# method definition =======================================

# Outra opção melhor é utilizar um método de definição. Ex:

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

def invited_friends(friends)
  friends.select { |friend| friend != 'Brian' }
end

friends
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_friends(friends)
 #=> ["Sharon", "Leo", "Leila", "Arun"]



