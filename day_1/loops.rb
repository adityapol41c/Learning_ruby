# While loop
puts "While loop:"
counter = 1
while counter <= 5
  puts "Counter: #{counter}"
  counter += 1
end

# Until loop
puts "\nUntil loop:"
countdown = 5
until countdown == 0
  puts "Countdown: #{countdown}"
  countdown -= 1
end

# For loop
puts "\nFor loop:"
for i in 1..3
  puts "For loop iteration: #{i}"
end

# Times iterator
puts "\nTimes iterator:"
3.times do |i|
  puts "Times iteration: #{i + 1}"
end

# Each with range
puts "\nEach with range:"
(1..3).each do |num|
  puts "Range each: #{num}"
end

# Loop control
puts "\nLoop control:"
10.times do |i|
  next if i % 2 == 0  
  break if i > 5      
  puts "Odd number: #{i}"
end