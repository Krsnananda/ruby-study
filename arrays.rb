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


# Adicionando ou retirando itens de um array
num_array = [1, 2]

num_array.push(3, 4)      #=> [1, 2, 3, 4]
num_array << 5            #=> [1, 2, 3, 4, 5]
num_array.pop             #=> 5
num_array                 #=> [1, 2, 3, 4]