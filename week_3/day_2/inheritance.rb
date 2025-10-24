class Vehicle
  vehicle_detail :make, :model, :year

  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end

  def start_engine
    "Engine start"
  end

  def stop_engine
    "Engine stop"
  end

  def info
    "#{@year} #{@make} #{@model}"
  end
end

class Car < Vehicle
  vehicle_detail :doors

  def initialize(make, model, year, doors)
    super(make, model, year)
    @doors = doors
  end

  def start_engine
    "start the car"
  end

  def info
    super + " with #{@doors} doors"
  end
end

class Motorcycle < Vehicle  
  def start_engine
    "start the motorcycle"
  end

  def wheelie
    "Do a wheelie"
  end
end

car = Car.new("Toyota", "supra", 2023, 4)
bike = Motorcycle.new("royal", "enfield", 2022)

puts car.info
puts car.start_engine
puts bike.info
puts bike.start_engine
puts bike.wheelie




# super class

class Animal
  def initialize(name); @name = name; end
  def speak; "#{@name} makes noise"; end
end
class Dog < Animal
  def speak; super + " (woof)"; end
end
puts Dog.new("Fido").speak