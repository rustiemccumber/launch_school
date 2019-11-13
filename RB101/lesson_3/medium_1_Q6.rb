=begin
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

"pumpkins"
[ "pumpkins", "rutabaga"]
=end
=begin
def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
=end

=begin
def color_valid(color)
  color == "blue" || color == "green"
end
=end



def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split("")
  if dot_separated_words.length == 4
    dot_separated_words = dot_separated_words.split(".")
    while dot_separated_words.size > 0 do
     word = dot_separated_words.pop
      break unless is_an_ip_number?(word)
    end
  elsif 
    puts "that is an invalid entry"
  end
  return true
end

def dot_separated_ip_address?("1234")