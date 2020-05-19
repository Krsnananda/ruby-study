# With the plus operator:
puts "Welcome " + "to " + "Odin!"    #=> "Welcome to Odin!"

# With the shovel operator:
puts "Welcome " << "to " << "Odin!"  #=> "Welcome to Odin!"

# With the concat method:
puts "Welcome ".concat("to ").concat("Odin!")  #=> "Welcome to Odin!"

#capitalize
puts "hello".capitalize #=> "Hello"
#include?

puts "hello".include?("lo")  #=> true

puts "hello".include?("z")   #=> false
#upcase

puts "hello".upcase  #=> "HELLO"
#downcase

puts "Hello".downcase  #=> "hello"
#empty?

puts "hello".empty?  #=> false

puts "".empty?       #=> true
#length

puts "hello".length  #=> 5
#reverse

puts "hello".reverse  #=> "olleh"
#split

puts "hello world".split  #=> ["hello", "world"]

puts "hello".split("")    #=> ["h", "e", "l", "l", "o"]
#strip

" hello, world   ".strip  #=> "hello, world"

#Substrings
puts "hello"[0]      #=> "h"

puts "hello"[0..1]   #=> "he"

puts "hello"[0, 4]   #=> "hell"

puts "hello"[-1]     #=> "o"

 # Interpolation
 name = "Odin"

puts "Hello, #{name}" #=> "Hello, Odin"
puts 'Hello, #{name}' #=> "Hello, #{name}"

#assignments
puts "he77o".sub("7", "l")           #=> "hel7o"

puts "he77o".gsub("7", "l")          #=> "hello"

puts "hello".insert(-1, " dude")     #=> "hello dude"

#Convertendo para strings

puts 5.to_s        #=> "5"

puts nil.to_s      #=> ""

puts :symbol.to_s  #=> "symbol"


# ============= Booleans ================ 
"string" == "string"  #=> true

"string".object_id == "string".object_id  #=> false

:symbol.object_id == :symbol.object_id    #=> true