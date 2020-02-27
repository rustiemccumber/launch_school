
# # using the following code, 
# # add a method named share_secret that prints
# # the value of @secret when invoked.

# class Person

#   attr_writer :secret

#   def share_secret
#     puts secret
#   end 

#   private

#   attr_reader :secret

# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'
# person1.share_secret

# Expected output:

# Shh.. this is a secret!


class Person 

  def secret= (value)
     @secret = value 
  end 

  def share_secret
    puts secret
  end 

  private

  def secret
    @secret 
  end

end 

person1 = Person.new 
person1.secret = 'Shh.. this is a secret!'
person1.share_secret 



