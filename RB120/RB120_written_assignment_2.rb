class Cats
  def to_s
    "name:  rustie\nType:  human\nserial_number: 123\n" +
    "Vacation days: 365\nDesk: yep"
  end
end

cat = Cats.new
puts cat