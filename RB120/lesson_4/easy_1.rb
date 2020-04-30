# class Greeting
#   def greet(message)
#     puts message
#   end
# end

# class Hello < Greeting
#   def self.hi
#     greet("Hello")
#   end
# end

# class Goodbye < Greeting
#   def bye
#     greet("Goodbye")
#   end
# end

# Hello.hi

# class AngryCat
#   def initialize(age, name)
#     @age  = age
#     @name = name
#   end

#   def age
#     puts @age
#   end

#   def name
#     puts @name
#   end

#   def hiss
#     puts "Hisssss!!!"
#   end
# end

# tom = AngryCat.new(4, "tom")
#  tom.age
#  tom.name
##############################

# Given the class below, if we created a new instance of the class 
# and then called to_s on that instance we would get something like "#<Cat:0x007ff39b356d30>"

# class Cat

#   attr_reader :type

#   def initialize(type)
#     @type = type
#   endrm

#   def to_s
#     "I am a #{type} cat"
#   end

# end

# tabby_cat = Cat.new('tabby')
# puts tabby_cat.to_s

#If we have a class such as the one below:

# class Cat
#   attr_accessor :type, :age

#   def initialize(type)
#     @type = type
#     @age  = 0
#   end

#   def make_one_year_older
#     @age += 1
#   end
# end

# tabby = Cat.new('tabby')

# tabby.make_one_year_older
# puts tabby.age 

# In the make_one_year_older method we have used self. 
# What is another way we could write this method so we don't have to use the self prefix?


# class Light
#   attr_accessor :brightness, :color

#   def initialize(brightness, color)
#     @brightness = brightness
#     @color = color
#   end

#   def self.information
#     puts "I want to turn on the light with a #{self.new('brightness', 'green').color} level of super high and a color of green"
#   end

# end

# Light.information

# class InvoiceEntry
#   attr_reader :quantity, :product_name

#   def initialize(product_name, number_purchased)
#     @quantity = number_purchased
#     @product_name = product_name
#   end

#   def update_quantity(updated_count)
#     # prevent negative quantities from being set
#     @quantity = updated_count if updated_count >= 0
#   end
# end


# Let's practice creating an object hierarchy.

# Create a class called Greeting with a single method called greet that takes 
# a string argument and prints that argument to the terminal.

# Now create two other classes that are derived from Greeting: one called Hello 
# and one called Goodbye. The Hello class should have a hi method that takes no 
# arguments and prints "Hello". The Goodbye class should have a bye method to 
# say "Goodbye". Make use of the Greeting class greet method when implementing 
# the Hello and Goodbye classes - do not use any puts in the Hello or Goodbye classes.

# class Greeting 
#   def greet(string)
#     puts string
#   end
# end

# class Hello < Greeting
#   def hi 
#     greet("hello")
#   end
# end

# class Goodbye < Greeting 
#   def goodbye
#     greet("goodbye")
#   end
# end 

# class KrispyKreme
#   def initialize(filling_type, glazing)
#     @filling_type = filling_type
#     @glazing = glazing
#   end

#   def to_s

#     filling_string = @filling_type ? @filling_type : "Plain"
#     glazing_string = @glazing ? " with #{@glazing}" : ''
#     filling_string + glazing_string 

#   end 

# end

# donut1 = KrispyKreme.new(nil, nil)
# donut2 = KrispyKreme.new("Vanilla", nil)
# donut3 = KrispyKreme.new(nil, "sugar")
# donut4 = KrispyKreme.new(nil, "chocolate sprinkles")
# donut5 = KrispyKreme.new("Custard", "icing")

# puts donut1
# puts donut2
# puts donut3
# puts donut4
# puts donut5

class Computer
  attr_accessor :template
  
  def create_template
    self.template = 'template 14231'
  end
  
  def show_template
    template
  end
end

mac = Computer.new 
mac.create_template
puts mac.show_template


