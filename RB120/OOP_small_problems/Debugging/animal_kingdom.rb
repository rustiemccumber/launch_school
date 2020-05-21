# The code below raises an exception. Examine the error
# message and alter the code so that it runs without error.

class Animal
  attr_accessor :diet, :superpower, :name 
  def initialize(diet, superpower, name = "cats")
    @diet = diet
    @superpower = superpower
    @name = name
  end

  def move
    puts "I'm moving!"
  end

  def superpower
    puts "I can #{@superpower}!"
  end
end

class Fish < Animal
  def move
    puts "I'm swimming!"
  end
end

class Bird < Animal
end

class FlightlessBird < Bird
  def initialize(diet, superpower)
    super
  end

  def move
    puts "I'm running!"
  end
end

class SongBird < Bird
  attr_accessor :song
  def initialize(diet, superpower, song)
    super(diet, superpower, song)
    @song = song
  end

  def move
    puts "I'm flying!"
  end
end

# Examples

unicornfish = Fish.new(:herbivore, 'breathe underwater')
penguin = FlightlessBird.new(:carnivore, 'drink sea water')
robin = SongBird.new(:omnivore, 'sing', 'chirp chirrr chirp chirp chirrrr')

#unicornfish.move
#penguin.move
#robin.move

#puts robin.diet
puts robin.superpower
puts robin.song
puts robin.name