ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }


ages_values = ages.values
lowest_age = [ages_values[0]]

ages_values.each do |x|

  if x < ages_values[0]
    lowest_age.pop  << x 
  end

end

puts lowest_age