class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hello, my name is #{@name} and I'm #{@age} years old."
  end

  def name
    @name
  end

  def age
    @age
  end

  def name=(new_name)
    @name = new_name
  end

  def age=(new_age)
    @age = new_age
  end
end

person1 = Person.new("aditya", 22)
person2 = Person.new("adi", 21)

puts person1.introduce
puts person2.introduce

person1.name = "don"
person1.age = 26
puts person1.introduce