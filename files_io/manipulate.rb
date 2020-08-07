content = File.open("files_io/teste.txt", "r"){ |text| text.read}
puts content

print "\nDigita o número do item que quer apagar: "
item = gets.chomp

is_user = false

# Apaga linha específica de arquivo
teste = File.open('files_io/teste.txt', 'r') do |file|
  file.readlines.each do |line|

    line.gsub!("#{line}", '') if line.match("#{item}")

    puts line
  end
end

File.open('files_io/resposta.txt', 'w'){ |arquivo| arquivo.puts "#{teste.join('')}"}


