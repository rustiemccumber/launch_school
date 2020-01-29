=begin
Build a program that asks a user for the length and width of a room
in meters and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

input
 -ask for the length of the room
 -ask for the width of the room

output
-length * with = area (meters)
-area (meters) * 10.7639 = area feet 
=end


puts('Enter the length of the room in meters:')
length = gets.chomp.to_f

puts('Enter the width of the room in meters:')
width = gets.chomp.to_f

area_meters = (length * width).round(1)
area_feet = (area_meters.to_f * 10.7639).round(1)

puts "the are of the room is #{area_meters} m^2 (#{area_feet} ft^2)"