class Animal 
  attr_accessor :name, :yelp
  def initialize(name, sound="vroom")
   @name = name
   @yelp = sound
  end
  def yowl()
    puts @yelp * 4
  end
end

class Dog < Animal
 def initialize(name)
   super(name, "Woof!")
 end
end

class Cat < Animal
  def initialize(name)
   super(name, "Meow")
  end
end

class Person
  attr_accessor :pet, :name
  def initialize(name)
    @name = name
    @pet = nil #1 pet at most
  end
end

class Employee < Person
  attr_accessor :salary
  def initialize(name, salary)
    super(name) #call on Person's version of init
    @salary = salary
  end
end

class Fish
end

class Salmon < Fish
end

class Halibut < Fish
end

rover = Dog.new("Rover")
satan = Cat.new("Satan")
mary = Person.new("Mary")
mary.pet = satan
frank = Employee.new("Frank", 120000)
frank.pet = rover
flipper = Fish.new()
crouse = Salmon.new()
harry = Halibut.new()

puts name = rover.name
puts mary.name
rover.yowl()
satan.yowl()
