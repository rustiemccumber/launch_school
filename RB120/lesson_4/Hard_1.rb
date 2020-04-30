# #Alyssa has been assigned a task of modifying a class that was initiallly created to keep track
# #of secret information.  The new requirement calls for adding logging, when clients of the class
# #attempt to access the secret data.  Here is the class in its current form:

# class Secret 
 

#   def initialize(secret_data, logger)
#     @data = secret_data
#     @logger = logger
#   end
  
#   def data 
#     @logger.create_log_entry
#     @data
#   end 

# end 

# # she needs to modify it so that any access to `data` must result in a log entry being generated.
# # That is, any call to the class which will result in data being returned must first call a logging class
# # The logging class has been suppplied to Alyssa and looks like the following:

# class SecurtiyLogger
#   def create_log_entry
#     puts   'this hass been logged'
#   end
# end

# new_secret = Secret.new('cats', SecurtiyLogger.new)
# puts new_secret.data

module AllVehicles 
  attr_accessor :speed, :heading
  attr_writer :fuel_capacity, :fuel_efficiency
  
  def range
    range = @fuel_capacity * @fuel_efficiency
    return (range + 10) if self.class.ancestors.include?(WaterVehicles)
    range
  end

end 

class WheeledVehicle
  include AllVehicles
  attr_reader :tires

  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    @tires = tire_array
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity
  end

  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end

end

class Auto < WheeledVehicle
  def initialize
    # 4 tires at various tire pressures 
    super([30,30,32,32], 50, 25.0)
  end
end

class Motorcycle < WheeledVehicle 
  def initialize
    # 2 tires at various tire pressures
    super([20, 20], 80, 8.0)
  end
end 

class WaterVehicles
  include AllVehicles 

  attr_reader :propeller_count, :hull_count

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity
    @propeller_count = num_propellers
    @hull_count = num_hulls
  end

end

class Catamaran < WaterVehicles
  include AllVehicles
end

class Motorboat < WaterVehicles
  
  def initialize(km_traveled_per_liter, liters_of_fuel_capacity)
    super(1, 1, km_traveled_per_liter, liters_of_fuel_capacity )
  end 
end 


kawasaki = Motorcycle.new
fast_boat = Motorboat.new(20, 5)
puts kawasaki.tire_pressure(1)
puts kawasaki.range
puts fast_boat.range