# Com begin e rescue ele lida com exceções e não quebra

a = 10
b = "42"

begin
   a + b
rescue
   puts "Não dá para adicionar a (#{a.class}) e b (#{b.class}), idiota!"
else
   puts "a + b is #{a + b}"
end

while 1
   puts "Enter a number>>"
   begin
     num = Kernel.gets.match(/\d+/)[0]
   rescue
     puts "Deixa de ser burro, tem que ser número! Tenta de novo..."
   else  
     puts "#{num} + 1 is: #{num.to_i+1}"
   end  
end
