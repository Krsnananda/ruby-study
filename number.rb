# File.open("test.txt").each do |line|
#    puts line
# end

#Numeros

# Addition
soma = 1 + 1  #=> 2
puts soma

# Subtraction
subtração = 2 - 1   #=> 1
puts subtração
# Multiplication
2 * 2   #=> 4

# Division
divisão = 10 / 5  #=> 2
puts divisão
# Exponent

expoente1 = 2 ** 2  #=> 4
expoente2 = 3 ** 4  #=> 81
puts expoente1
puts expoente2

# Modulus (find the remainder of division)
resto1 = 8 % 2   #=> 0  (8 / 2 = 4; no remainder)
resto2 = 10 % 4  #=> 2  (10 / 4 = 2 with a remainder of 2)
puts resto1
puts resto2

float =  17 / 5.0  #=> 3.4
puts float

# To convert an integer to a float:
tofloat = 13.to_f   #=> 13.0
puts tofloat

# To convert a float to an integer:
13.0.to_i #=> 13
toint = 13.9.to_i #=> 13
puts toint

#numero par
puts 6.even? #=> true
puts 7.even? #=> false

#numero impar
puts 6.odd? #=> false
puts 7.odd? #=> true

5.eql?(5.0) #=> false; although they are the same value, one is an integer and the other is a float
5.eql?(5)   #=> true