# # Given the below usage of the Person class,
# # code the class definition.

# class Person
  
#   attr_accessor :first_name, :last_name 

#   def initialize(full_name)
#     parts = full_name.split 
#     @first_name = parts.first 
#     @last_name = parts.size > 1 ? parts.last : ''
#   end 

#   def name
#     first_name + ' ' + last_name
#   end 

# end 

# bob = Person.new('Robert')
# puts bob.name                  # => 'Robert'
# puts bob.first_name            # => 'Robert'
# puts bob.last_name             # => ''
# bob.last_name = 'Smith'
# puts bob.name                  # => 'Robert Smith'


# Now create a smart name= method that can take 
# just a first name or a full name, and knows how 
# to set the first_name and last_name appropriately.

class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    parse_full_name(full_name)
  end

  def name
    "#{first_name} #{last_name}".strip
  end

  def name=(full_name)
    parse_full_name(full_name)
  end

  def compare_names(other_object)
    self.name == other_object.name
  end 

  private

  def parse_full_name(full_name)
    parts = full_name.split
    self.first_name = parts.first
    self.last_name = parts.size > 1 ? parts.last : ''
  end
end



bob = Person.new('Robert Smith')
rob = Person.new('Robert Smith')

puts bob.compare_names(rob)

