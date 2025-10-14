fruits = ["apple", "banana", "orange", "grape"]
numbers = [1, 2, 3, 4, 5]
mixed = [1, "hello", 3.14, true]

puts "Original array: #{fruits}"

# Array methods
puts "First element: #{fruits.first}"
puts "Last element: #{fruits.last}"
puts "Length: #{fruits.length}"
puts "Include 'apple': #{fruits.include?('apple')}"
puts "Index of 'orange': #{fruits.index('orange')}"

# Adding elements
fruits.push("mango")
fruits << "pineapple"
fruits.unshift("strawberry")
puts "After adding: #{fruits}"

# Removing elements
fruits.pop
fruits.shift
fruits.delete("banana")
puts "After removing: #{fruits}"

# Iteration
puts "\nIteration:"
fruits.each { |fruit| puts "I like #{fruit}" }
fruits.each_with_index { |fruit, index| puts "#{index + 1}. #{fruit}" }