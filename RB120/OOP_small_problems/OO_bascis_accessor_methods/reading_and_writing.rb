# Add the appropriate accessor methods to the following code.

class Person

  attr_accessor :name
  attr_writer :phone_number 

end

person1 = Person.new
person1.name = 'Jessica'
puts person1.name

# Expected output:

# Jessica