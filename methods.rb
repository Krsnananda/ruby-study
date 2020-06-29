# Por ser uma linguagem puramente orientada a objeto, onde tudo é um objeto, Ruby possui apenas métodos e não funções.
# Quanto se comentad sobre funções e métodos em Ruby, se referem a mesma coisa.

# Nota: Funções não possuem um objeto associado / Métodos são chamados em um objeto receptor.

# !!! Utiliza-se por convenção snake case em nomes com mais de uma palavra. Ex:
snake_case

# Métodos internos são tipicamente chamados logo após instanciar um objeto. Ex: 
"anything".reverse

# Porém existem métodos internos que podem ser acessados globalmente. Geralmente são chamados apenas com seu nome e 
# algum argumento. Ex:
puts "anything" #=> anything

# ==================

# Podemos nosso próprio método seguindo a sintaxe abaixo:
def my_name
   "Joe Smith"
 end
 
 puts my_name    #=> "Joe Smith"
 
# =================

 def greet(name)
   "Hello, " + name + "!"
 end
 
 puts greet("John") #=> Hello, John!

#  Neste exemplo, name é um parâmetro, enquanto "John" é um argumento

# ==================
# Usando um parâmetro default

def greet(name = "stranger")
   "Hello, " + name + "!"
 end
 
 puts greet("Jane") #=> Hello, Jane!
 puts greet #=> Hello, stranger!

#  =========================
# Ruby é uma das poucas linguagens que possuem um "retorno implícito", ou seja, não precisa definir 
# o retorno com um "return". Ex:

def even_odd(number)
   if number % 2 == 0
     "That is an even number."
   else
     "That is an odd number."
   end
 end
 
 puts even_odd(16) #=>  That is an even number.
 puts even_odd(17) #=>  That is an odd number

# ============================
# A vantagem é poder definir um retorno explícito para dizer qual expressão você quer calcular. Ex:

def my_name
   return "Joe Smith"
   "Jane Doe"
 end
 
 puts my_name #=> "Joe Smith"

#  Isso serve por exemplo, para escrever métodos que checam erros no input antes de continuar. Ex:

def even_odd(number)
   unless number.is_a? Numeric
     return "A number was not entered."
   end
 
   if number % 2 == 0
     "That is an even number."
   else
     "That is an odd number."
   end
 end
 
 puts even_odd(20) #=>  That is an even number.
 puts even_odd("Ruby") #=>  A number was not entered.

# É possível printar na tela o resultado do método puts utilizando interpolação #{}
# Ao invés de apenas utilizar o return

x = return_squared(20) #=> 400
y = 100
sum = x + y #=> 500

puts "The sum of #{x} and #{y} is #{sum}."
#=> The sum of 400 and 100 is 500.

#  ================== Métodos encadeados (Chaining methods) ======================

phrase = ["be", "to", "not", "or", "be", "to"]

puts phrase.reverse.join(" ").capitalize
#=> "To be or not to be"

# ================== Predicate Methods ============================
# É parecido com o Ternário, em JS, por Ex: condition ? expr1 : expr2 
# É um método booleano, que retorna verdadeiro ou falso

puts 5.even?  #=> false
puts 6.even?  #=> true
puts 17.odd?  #=> true

puts 12.between?(10, 15)  #=> true

# ================== Bang Method (criativo hehe) ============================
# É característico por adicionar um "!" no final do método.
# Basicamente ele sobrescreve as variáveis originais. É o mesmo que escrever: Por exemplo

whisper = "HELLO EVERYBODY"
whisper = whisper.downcase
puts whisper #=> hello everybody

# Que pode ser escrito assim:
whisper = "HELLO EVERYBODY" 
puts whisper.downcase! #=> "hello everybody"
puts whisper #=> "hello everybody"

# Sem o método bang ou sem redefinir a variável, aconteceria o seguinte:
whisper = "HELLO EVERYBODY"
puts whisper.downcase #=> "hello everybody"
puts whisper #=> "HELLO EVERYBODY" Ao chamar a variável original ela mantém o seu valor de antes