class Person
  attr_writer :first_name, :last_name

  def full_name
    first_name + ' ' + last_name
  end
end

mike = Person.new
mike.first_name = 'Michael'
mike.last_name = 'Garcia'
puts mike.full_name # => 'Michael Garcia'