# Class based inheritance works great when it's used to model 
# hierarchical domains. Let's take a look at a few practice 
# problems. Suppose we're building a software system for a pet
# hotel business, so our classes deal with pets.

class Pet

  def run 
    'running'
  end

  def jump
    'jumping'
  end


end 

class Dog < Pet 

  def speak
    'bark!'
  end

  def fetch
    'fetching!'
  end

  def swim
    'swimming'
  end 

end

class Bulldog < Dog 
  def swim
    "can't swim!"
  end 
end 

class Cat < Pet

  def speak
    "meow"
  end 

end 

# teddy = Dog.new
# puts teddy.speak           # => "bark!"
# puts teddy.swim           # => "swimming!"

# karl = Bulldog.new 
# puts karl.speak
# puts karl.swim

# tabby = Cat.new 
# puts tabby.speak 
# puts tabby.fetch
# puts tabby.swim

pete = Pet.new
kitty = Cat.new
dave = Dog.new
bud = Bulldog.new

puts pete.run                # => "running!"
puts pete.speak              # => NoMethodError

puts kitty.run               # => "running!"
puts kitty.speak             # => "meow!"
puts kitty.fetch             # => NoMethodError

puts dave.speak              # => "bark!"

puts bud.run                 # => "running!"
puts bud.swim  

# One problem is that we need to keep track 
# of different breeds of dogs, since they have 
# slightly different behaviors. For example, bulldogs
# can't swim, but all other dogs can.

# Create a sub-class from Dog called Bulldog overriding 
# the swim method to return "can't swim!"