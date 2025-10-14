a = 10
b = 3

puts "a = #{a}, b = #{b}"
puts "Addition: #{a + b}"
puts "Subtraction: #{a - b}"
puts "Multiplication: #{a * b}"
puts "Division: #{a / b}"
puts "Modulus: #{a % b}"
puts "Exponent: #{a ** b}"

# float
x = 10.5
y = 3.2
puts "\nFloat Division: #{x / y}"

# math module
puts "\nMath Functions:"
puts "Square Root of 16: #{Math.sqrt(16)}"
puts "PI: #{Math::PI}"
puts "Sin(90): #{Math.sin(Math::PI/2)}"
puts "Log(10): #{Math.log(10)}"

# number conversions
str_num = "42"
puts "\nConversions:"
puts "String to Integer: #{str_num.to_i}"
puts "String to Float: #{str_num.to_f}"
puts "Integer to String: #{42.to_s}"