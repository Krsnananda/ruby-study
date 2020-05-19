puts num_array = [1, 2, 3, 4, 5]
puts str_array = ["This", "is", "a", "small", "array"]

Array.new               #=> []
Array.new(3)            #=> [nil, nil, nil]
Array.new(3, "Hello")   #=> ["Hello", "Hello", "Hello"]
Array.new(3, Array.new) #=> [[], [], []]

#posição de um index em um array
str_array = ["This", "is", "a", "small", "arrays"]

str_array[0]            #=> "This"
str_array[1]            #=> "is"
str_array[4]            #=> "array"
str_array[-1]           #=> "array"
str_array[-2]           #=> "small"

str_array.first         #=> "This"
puts str_array.first(2)      #=> ["This", "is"]
puts str_array.last(2)       #=> ["small", "arrays"]
puts str_array.last       #=> ["arrays"]


# Adicionando ou retirando itens no final de um array
num_array = [1, 2]

num_array.push(3, 4)      #=> [1, 2, 3, 4]
num_array << 5            #=> [1, 2, 3, 4, 5]
num_array.pop             #=> 5
num_array                 #=> [1, 2, 3, 4]

# Adicionando ou ou retirando itens no começo de um array
num_array = [2, 3, 4]

num_array.unshift(1)   #=> [1, 2, 3, 4]
num_array.shift           #=> [1]
num_array                 #=> [2, 3, 4]

# Adding and Subtracting Arrays

a = [1, 2, 3]
b = [3, 4, 5]

# Adição de array
a + b         #=> [1, 2, 3, 3, 4, 5]
a.concat(b)   #=> [1, 2, 3, 3, 4, 5]

# Subtração de array
[1, 1, 1, 2, 2, 3, 4] - [1, 4]  #=> [2, 2, 3]

# Mostra lista de métodos para manipulação de arrays disponíveis
num_array.methods

[].empty?               #=> true
[[]].empty?             #=> false
[1, 2].empty?           #=> false

[1, 2, 3].length        #=> 3

[1, 2, 3].reverse       #=> [3, 2, 1]

[1, 2, 3].include?(3)   #=> true
[1, 2, 3].include?("3") #=> false

[1, 2, 3].join          #=> "123"
[1, 2, 3].join("-")     #=> "1-2-3"