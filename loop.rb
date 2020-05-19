i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end

#enquanto a condição for true o loop continua
i = 0
while i < 10 do
 puts "i is #{i}"
 i += 1
end

#chomp retorna apenas o input que saiu do teclado
while gets.chomp != "yes" do
   puts "Will you go to prom with me?"
end

until gets.chomp == "yes" do
   puts "Will you go to prom with me?"
end

#enquanto a condição for false o loop continua
i = 0
until i > 10 do
 puts "i is #{i}"
 i += 1
end

#  ========== RANGES =============
(1..5)      # inclusive range: 1, 2, 3, 4, 5
(1...5)     # exclusive range: 1, 2, 3, 4

# We can make ranges of letters, too!
('a'..'d')  # a, b, c, d

# inclui um range de 0 a 5
for i in 0..5
   puts "#{i} zombies incoming!."
 end

 # cria um range de 0 a 4
 5.times do |number|
   puts "Alternative fact number #{number}"
 end

 # itera uma variável para cima ou para baixo
 5.upto(10) {|num| print "#{num} " }     #=> 5 6 7 8 9 10

10.downto(5) {|num| print "#{num} " }   #=> 10 9 8 7 6 5