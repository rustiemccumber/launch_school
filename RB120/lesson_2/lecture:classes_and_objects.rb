# Given the below usage of the Person class,
# code the class definition.

class Person

  attr_accesor  :name 

  def initialize(name)
    @name = name 
  end 

end 

bob = Person.new('bob')
puts bob.name                  # => 'bob'
bob.name = 'Robert'
puts bob.name   