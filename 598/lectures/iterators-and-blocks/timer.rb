def timer
  start_time = Time.now
  puts "yielding..."
  yield
  puts "yield done"
  end_time = Time.now
  return "#{end_time - start_time} seconds"
end

duration = timer() do
  puts "Starting task 1..."
  sleep 3
  puts "task 1 done."
end
p duration

duration = timer() do
  puts "Starting task 2..."
  sleep 1
  puts "task 2 done."
end
p duration
