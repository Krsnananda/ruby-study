# Como manipular arquivos I/O (Input/Output)

somefile = File.open("sample.txt", "w") # Cria um arquivo e escreve hello text nele
somefile.puts "Hello file!"
somefile.close

# Tambem pode ser escrito com o block method
File.open("sample.txt", "w"){ |somefile| somefile.puts "Hello file!"} #Bem melhor :D

# Leitura de arquivos ==================

contents = File.open("sample.txt", "r"){ |file| file.read }
puts contents

# "Readline" lê os arquivos linha por linha, "eof" é um método da class File que retorna true se não
# há mais dados no arquivo 
file = File.open("sample.txt", 'r')
while !file.eof?
   line = file.readline
   puts line
end