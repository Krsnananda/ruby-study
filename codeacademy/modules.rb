require 'date'

puts Date.today

module Circle

   PI = 3.141592653589793
   
   def Circle.area(radius)
     PI * radius**2
   end
   
   def Circle.circumference(radius)
     2 * PI * radius
   end
end

 #Constantes são sempre escritas em caixa alta e underscore ex: ALL_CAPS

 puts Math::PI #Tem módulo pronto para o PI! :D


# Módulo exemplo 2 ===============================

module Action
   def jump
     @distance = rand(4) + 2
     puts "I jumped forward #{@distance} feet!"
   end
 end
 
 class Rabbit
   include Action
   attr_reader :name
   def initialize(name)
     @name = name
   end
 end
 
 class Cricket
   include Action
   attr_reader :name
   def initialize(name)
     @name = name
   end
 end
 
 peter = Rabbit.new("Peter")
 jiminy = Cricket.new("Jiminy")
 
 peter.jump
 jiminy.jump