class Dog
  def speak
    "bhau bhau"
  end

  def move
    "walks on 4 leg"
  end
end

class Cat
  def speak
    "Meow"
  end

  def move
    "silent walking"
  end
end

animals = [Dog.new, Cat.new]

puts "=== Animal Sounds ==="
animals.each do |animal|
  puts "#{animal.class}: #{animal.speak}"
end

puts "\n=== Animal Movements ==="
animals.each do |animal|
  puts "#{animal.class}: #{animal.move}"
end
