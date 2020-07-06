

def step(start_value, end_value, step)

  accum = start_value
  until accum > end_value do
    yield(accum)
    break if accum + step > end_value
    accum += step
  end
  accum
end

step(1, 10, 3) { |value| puts "value = #{value}" }



# value = 1
# value = 4
# value = 7
# value = 10