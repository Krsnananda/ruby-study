class Creatures
  def initialize(name)
    @name = name
  end

  def fight
    'Punch to the chops!'
  end
end
# Sobrescreve o metodo da super classe por esse
class Ogre < Creatures
  def fight
    'Eat someone'
  end
end

class Creature
  def initialize(name)
    @name = name
  end

  def fight
    'Punch to the chops!'
  end
end

# Retorna o metodo da class pai (super classe)
class Dragon < Creature
  def fight
    puts 'Instead of breathing fire'
    super
  end
end
