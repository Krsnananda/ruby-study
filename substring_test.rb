def substrings(string, dict)
   results = Hash.new(0)
   dict.each do |words|
      array_words = string.downcase.scan(/#{words}/)
      results[words] += array_words.length if array_words.length > 0
   end
   results
end

dictionary = ["melão", "morango", "laranja", "laranja", "melancia", "uva", "mação", "abacaxi"]
# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts 'Escreva a palavra que você quer procurar: '

writed = gets.chomp.to_s

puts substrings(writed, dictionary)
