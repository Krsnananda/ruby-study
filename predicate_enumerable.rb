#  ================= PREDICATE ENUMERABLE METHODS ========================

#  include? method ==============================

numbers = [5, 6, 7, 8]

numbers.include?(6)
#=> true

numbers.include?(3)
#=> false

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

# Novo array onde friends são diferentes de Brian
invited_list = friends.select { |friend| friend != 'Brian' }

# Mẃtodo retorna falso no novo array, onde Brian não está
invited_list.include?('Brian')
#=> false

# any? method ========================================
# Retorno se algum dos valores cumprem a condição

numbers = [21, 42, 303, 499, 550, 811]

# Se há algum (any) número maior que 500
numbers.any? { |number| number > 500 }
#=> true

# Se há algum (any) número menor que 20
numbers.any? { |number| number < 20 }
#=> false

# all? method ===========================================
# Retorna true se TODOS os elementos cumprem a condição

fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.all? { |fruit| fruit.length > 3 }
#=> true

fruits.all? { |fruit| fruit.length > 6 }
#=> false

# PS: O método any? irá sempre retorna true por default, por ex: em um array vazio, a menos que o bloco retorne false

#  none? method ======================================
# Retorna true de nenhum elemento cumpre a condição

fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.none? { |fruit| fruit.length > 10 }
#=> true

fruits.none? { |fruit| fruit.length > 6 }
#=> false
