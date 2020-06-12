
module Delegatable
  def delegate
    puts "I can delegate"
  end
end

module Vacationable
  def take_vacation
    puts "i can take vacation"
  end
end

class EmpolyeeManagmentSystem
  def initialize
    @employees = [] # append you employees to this array
  end
end

class Employee
  def initialize(name, serial_number, type)
    @name = name
    @serial_number = serial_number
    @type = type
  end

  def to_s
    "name: #{@name} \nType: #{@type}\nserial_number: #{@serial_number}\n" +
    "Vacation days: #{@vacation}\nDesk: #{@desk}"
  end
end

class Executive < Employee
  include Vacationable
  include Delegatable
  def initialize(name, serial_number)
    super(name, serial_number, "full time")
    @vacation = 20
    @desk = "corner office"
  end
end

class Manager < Employee
  include Vacationable
  include Delegatable
  def initialize(name, serial_number)
    super(name, serial_number, "full time")
    @vacation = 14
    @desk = "private office"
  end
end

class Regular < Employee
  include Vacationable
  def initialize(name, serial_number)
    super(name, serial_number, "full time")
    @vacation = 10
    @desk = "cubicle farm"
  end
end

class PartTime < Employee
  def initialize(name, serial_number)
    super(name, serial_number, "Part Time")
    @vacation = 0
    @desk = "open workspace"
  end
end

rustie = Executive.new("Rustie", 0)
# sam = PartTime.new("Sam", 1)
# muriel = Manager.new("Muriel", 2)
# sienne = Regular.new("sienne", 3)

# rustie.take_vacation
# rustie.delegate
puts rustie

# sam.take_vacation
# sam.delegate
# puts sam

# muriel.take_vacation
# muriel.delegate
# puts muriel

# sienne.take_vacation
# sienne.delegate
# puts sienne
