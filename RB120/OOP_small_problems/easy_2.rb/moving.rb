module Walkable 

  def walk 
   puts " #{name} #{gait} forward"
  end 
end

class Person

  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def gait
    "strolls"
  end
end

class Cat

  include Walkable 
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def gait
    "saunters"
  end
end

class Cheetah

  include Walkable 
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def gait
    "runs"
  end
end

# You need to modify the code so that this works:

mike = Person.new("Mike")
mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
flash.walk
# => "Flash runs forward"

