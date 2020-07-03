def create_cipher(msg, shift)
   cipher = ''
   string = ("a".."z")
   upside_down = string.reverse_each
   msg.each do |letter|
      if upside_down.include?(letter.downcase)
         shift.times {letter = letter.next}
      end
      cipher += letter[-1]
   end
   return cipher
end

print("Por favor insira a mensagem: ")
msg = gets.chomp.split(//)

print("Por favor insira o número de troca: ")
shift = gets.chomp.to_i

puts create_cipher(msg, shift)
