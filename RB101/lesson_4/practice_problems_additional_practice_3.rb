ages = { "Herman" => 32, "Lily" => 30, "Eddie" => 10 }

ages.reject! do |key, value|

  value >= 100

end

puts ages