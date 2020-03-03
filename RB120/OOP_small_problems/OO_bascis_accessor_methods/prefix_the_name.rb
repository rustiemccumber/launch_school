# Using the following code, add the appropriate accessor methods so that
# @name is returned with the added prefix 'Mr.'.

class Person
  attr_reader :name 

  def name= (new_name)
    @name = "Mr." + new_name 
  end

end

person1 = Person.new
person1.name = 'James'
puts person1.name
# Expected output:

# Mr. James