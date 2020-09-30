







def timer
  raise RuntimeError, "No block given" unless block_given?
  time_before = Time.now
  10_000_000.times {yield}
  time_after = Time.now
  duration = time_after - time_before
  "#{duration} seconds"
end

p timer { |x| i = x.to_s } # 1.731092053 seconds

timer # No block given (RuntimeError)