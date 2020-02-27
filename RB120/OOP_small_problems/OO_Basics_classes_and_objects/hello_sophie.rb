#Using the code from the previous exercise, 
#add a parameter to 
#initialize that provides a name for the Cat object.
#Use an instance variable to print a greeting with the 
#provided name. (You can remove the code that displays 
# #I'm a cat!.)

# class Cat

#   def initialize(n)
#     @name = n 
#   end

#   def greet 
#     puts "Hello! My name is #{@name}"
#   end 

# end

# kitty = Cat.new('Sophie')

# kitty.greet 

#Using the code from the previous exercise,
#add a setter method named
#name. Then, rename kitty to 'Luna' and invoke #greet again.

class Cat
  attr_reader :name
  attr_writer :name 

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end

end

kitty = Cat.new('Sophie')
kitty.greet

kitty.name = ("Luna")
kitty.greet
