my_hash = { 
  "a random word" => "ahoy", 
  "Dorothy's math test score" => 94, 
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {} 
}
puts my_hash

hash = { 9 => "nine", :six => 6 }
puts hash

# ========================================

shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

puts shoes["summer"]   #=> "sandals"

# Ao tentar dar fetch em um valor que não existe retorna um not found
# shoes.fetch("hiking")   #=> KeyError: key not found: "hiking"

# É possível retornar um valor default caso o fetch não seja encontrado
shoes.fetch("hiking", "hiking boots") #=> "hiking boots"

# Adiciona um chave no hash
shoes["fall"] = "sneakers"

puts shoes     #=> {"summer"=>"sandals", "winter"=>"boots", "fall"=>"sneakers"}

# Modifica valor de chave no hash
shoes["summer"] = "flip-flops"
puts shoes     #=> {"summer"=>"flip-flops", "winter"=>"boots", "fall"=>"sneakers"}

# Removendo um valor 
shoes.delete("summer")    #=> "flip-flops"
shoes                     #=> {"winter"=>"boots", "fall"=>"sneakers"}

# =============================

# capturando chaves ou valores do hash

books = { 
  "Infinite Jest" => "David Foster Wallace", 
  "Into the Wild" => "Jon Krakauer" 
}

books.keys      #=> ["Infinite Jest", "Into the Wild"]
books.values    #=> ["David Foster Wallace", "Jon Krakauer"]

#===================================

# Merging Two Hashes
hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
puts hash1.merge(hash2)      #=> { "a" => 100, "b" => 254, "c" => 300 }

# =======================================

#Símbolos como chaves do Hash
# 'Rocket' syntax 
american_cars = { 
  :chevrolet => "Corvette", 
  :ford => "Mustang", 
  :dodge => "Ram" 
}
puts american_cars
# 'Symbols' syntax
japanese_cars = { 
  honda: "Accord", 
  toyota: "Corolla", 
  nissan: "Altima" 
}
puts japanese_cars
puts american_cars[:ford]    #=> "Mustang"
puts japanese_cars[:honda]   #=> "Accord"
