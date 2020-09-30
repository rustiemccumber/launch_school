class Cipher
  ALPHABET = ('a'..'z').to_a

  def initialize(str, increment)
    @str = str
    @increment = increment
  end

  def self.rotate(str, increment)
    Cipher.new(str, increment).rotate
  end

  def rotate
    return_array = []
    @str.chars.each do |char|
      return_value = /[a-z]/i.match?(char) ? convert(char) : char
      return_array << return_value
    end
    return_array.join
  end

  def convert(char)
    initial_index = ALPHABET.find_index(char.downcase)
    new_index = (initial_index + @increment)
    new_index = new_index % 25 - 1 if new_index > 25
    return ALPHABET[new_index].upcase if check_upcase(char)
    ALPHABET[new_index]
  end

  def check_upcase(char)
    char.upcase == char
  end
end
