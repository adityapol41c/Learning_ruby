def greet
  "Hello, World!"
end
puts greet

# with parameters
def greet1(name, age = 18)
  "Hello #{name}, you are #{age} years old!"
end
puts greet1("aditya")
puts greet1("adi",22)

# calci
def calculate(a, b)
  sum = a + b
  subtract = a - b
  multi = a * b
  divide = a / b.to_f
  
  return sum, subtract, multi, divide
end

result = calculate(10, 3)
puts "Calculation results: #{result}"