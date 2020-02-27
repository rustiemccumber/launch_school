# Create a class called MyCar. When you initialize a new 
# instance or object of the class, allow the user to define
# some instance variables that tell us the year, color, and
# model of the car. Create an instance variable that is set 
# to 0 during instantiation of the object to track the current 
# speed of the car as well. Create instance methods 
# that allow the car to speed up, brake, and shut the car off.

module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true:false 
  end 
end 

class Vehicle

  @@number_of_vehicles = 0

    
  attr_accessor :color, :velocity
  attr_reader :year, :model 

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def self.show_object_count
    puts "this program has created #{@@number_of_vehicles} vehicles"
  end 
  
  def initialize(y, c, m) 
    @year = y 
    @color = c 
    @model = m 
    @velocity = 0 
    @@number_of_vehicles += 1 
  end 

  def increase_speed(number)
    @velocity += number 
    puts "You push the gas and accelerate #{number} mph"
  end 

  def brake(number)
    @velocity -= number
    puts " you push the break and decelerate #{number} mph"
  end 

  def shut_down 
    @velocity = 0 
    puts "The engine is off baby"
  end 

  def spray_paint(newcolor) 
     self.color = newcolor
  end 

 def to_s
   "your vehicle is a #{year} #{color} #{@model}"
 end 

 def age
    "your #{self.model} is #{years_old} years_old"
  end 

 private 

 def years_old
   Time.now.year - self.year 
 end 

end 

class MyCar < Vehicle 

  NUMBER_OF_DOORS = 4
end 

class MyTruck < Vehicle 
    include Towable 

    NUMBER_OF_DOORS = 2
end 

class Student

  attr_accessor :name 

  def initialize(n, g)
    @name = n 
    @grade = g 
  end 

  def better_grade_then?(other_student)
    grade > other_student.grade
  end

  protected 

  def grade
    @grade
  end 

end 


  mazda = MyCar.new(1999, "pink", "miata")
  toyota = MyTruck.new(1999, "black", "tacoma")
  mazda.increase_speed(20)
  puts mazda.velocity
  mazda.brake(5)
  puts mazda.velocity 
  mazda.shut_down 
  puts mazda.velocity 
  puts mazda.color
  mazda.color=("black")
  puts mazda.color
  mazda.spray_paint("yellow")
  puts mazda.color
  MyCar.gas_mileage(2, 25)
  puts mazda
  puts toyota.can_tow?(1500)
  Vehicle.show_object_count
  puts "--method look up path---"
  puts MyCar.ancestors
  puts MyTruck.ancestors
  puts Vehicle.ancestors 
  puts mazda.velocity
  mazda.brake(5)
  puts mazda.velocity
  puts mazda.color
  mazda.spray_paint("green")
  puts mazda.color
  puts toyota.to_s
  puts mazda.age

  bob = Student.new("Bob", 90)
  sam = Student.new("Sam", 100)

  puts "well done!" if sam.better_grade_then?(bob)


