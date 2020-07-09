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
