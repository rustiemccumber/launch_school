# Take a look at the following code:

class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    @name.upcase
    "My name is #{@name}."
  end
  
  def name 
    @name
  end 

end

# name = 'Fluffy'
# fluffy = Pet.new(name)
# puts fluffy.name  fluffy 
# puts fluffy  My name is FLUFFY 
# puts fluffy.name  #FLUFFY
# puts name  #My name is FLUFFY 


name = 42
fluffy = Pet.new(name)
name += 1
puts fluffy.name
puts fluffy
puts fluffy.name
puts name
# What output does this code print? 
# Fix this class so that there are no 
# surprises waiting in store for the 
# unsuspecting developer.