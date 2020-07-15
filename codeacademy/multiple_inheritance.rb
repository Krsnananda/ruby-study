# Simula uma múltipla herança ao incluir módulo em ambas as classes

# IMPORTANTE! 
# -> include permite o uso de métodos do módulo a nível de instância
# -> extend permite o uso do mesmo a nível de classe

# INCLUDE
module MartialArts
   def swordsman
     puts "I'm a swordsman"
   end
 end
 
 class Ninja
 include MartialArts
   def initialize(clan)
     @clan = clan
   end
 end
 
 class Samurai
 include MartialArts
   def initialize(shogun)
     @shogun = shogun
   end
 end

#  EXTEND
module ThePresent
   def now
     puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
   end
 end
 
 class TheHereAnd
   extend ThePresent
 end
 
 TheHereAnd.now