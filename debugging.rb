# ========= Debugging =====================
# O método mais eficiente de debugging é utilizar o método #puts
# Ou #p (que é a junção dos métodos #puts e #inspect)

# PS: Outro método viável é utilizar a gem Pry. 
# 1 - Instalar Pry: gem install pry
# 2 - Requerer pry no arquivo: require 'pry'
# 3 - Chamar binding.pry a qualquer momento no programa. Detalhe que todo o código que estiver depois da chamada
# Não será avaliado

require 'pry'

def double_words_in_phrase(string)
  string_array = string.split(' ')

  binding.pry
  
  string_array.map! { |word| word * 2}
  string_array.join(' ')
end

double_words_in_phrase("This is a test")

#  Exemplo 2 ==================

def yell_greeting(string)
   name = string
 
   binding.pry
 
   name = name.upcase
   greeting = "WASSAP, #{name}!"
   puts greeting
 end
 
 yell_greeting("bob")