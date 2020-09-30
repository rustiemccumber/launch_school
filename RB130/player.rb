


class Player

  attr_accessor :name, :initial_health, :health

  def initialize(name, initial_health = 50)
     @name = name.capitalize 
     @initial_health = initial_health
     @health = initial_health
  end

  def to_s
    return "I was #{name}, now I am dead :(."  if dead?
    "I'm #{name} with health = #{initial_health}."
  end

  def boost
    raise NoMethodError if dead?
    self.health += 20 
  end

  def hurt
    raise NoMethodError if dead?
    self.health -= 10
  end

  def dead?
    self.health == -1
  end 

end 