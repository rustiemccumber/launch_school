# Write a program that will take a decimal number, 
# and convert it to the appropriate sequence of events for a secret handshake.

# There are 10 types of people in the world: Those who understand binary, and those who don't.
# You and your fellow cohort of those in the "know" when it comes to binary decide to come up
# with a secret "handshake".

# 1 = wink
# 10 = double blink
# 100 = close your eyes
# 1000 = jump


# 10000 = Reverse the order of the operations in the secret handshake.
# handshake = SecretHandshake.new 9
# handshake.commands # => ["wink","jump"]

# handshake = SecretHandshake.new "11001"
# handshake.commands # => ["jump","wink"]
# The program should consider strings specifying an invalid binary as the value 0.

#create a way to turn a number into a a binary number
#have a look up table with all of the numbers

#to the binary string into a number, divide the binary by and then the subsequent remainder by
# 1000, 100, 10, 1


class SecretHandshake

  COMMANDS = ["jump", "close your eyes", "double blink", "wink"]
  
  def initialize(number)
    @input_number = number
  end

  def commands
    binary_array = convert_to_binary
    command_array = []
    binary_array[1..4].zip(COMMANDS).each do |binary, command|
      command_array << command if binary == 1
    end
    return command_array if (binary_array[0] == 1)
    command_array.reverse
  end

  def convert_to_binary
    return convert_string_to_binary if @input_number.class == String
    current_numerator = @input_number
    binary_array = [0, 0, 0, 0, 0]
    idx = 0
    loop do
      break if idx == 5
      binary_value = current_numerator % 2
      binary_array[idx] = binary_value
      current_numerator /= 2
      idx += 1
    end
    binary_array.reverse
  end

  def convert_string_to_binary
    binary_number_array = @input_number.chars.map(&:to_i)
    binary_array = [0, 0, 0 , 0 , 0]
    binary_number_array.each_with_index do |int, idx|
      binary_array[idx] = int 
    end

    binary_array.reverse
  end

end


# p SecretHandshake.new(3).convert_to_binary
# p SecretHandshake.new(19).convert_to_binary


# p SecretHandshake.new(3).commands
# p SecretHandshake.new(19).commands
