TIME_FOR_WORLD_TO_LIVE = 1000000000 #global constant

#defined? Is this class/function/etc. defined already?
class WheeledObject
  attr_accessor :numWheels
  TIME_TO_LIVE = 100 #constants start with uppercase letter
  @@no_of_riders = 0 # @@ variables must be initialized right here 
  def initialize(num_wheels)
    @numWheels = num_wheels
    puts "Inner: I have #{@numWheels} wheels"
  end
  def display_details()
    puts "I have #@numWheels wheels and #@@no_of_riders riders"
  end
  def get_another_rider()
    @@no_of_riders += 1
    puts "Total number of riders: #@@no_of_riders riders"
  end
  def self.inherited(subclass) #called when document is parsed through
    puts "New subclass: #{subclass}"
  end
end

class Bicycle < WheeledObject
  def initialize()
    super(2)
    puts "I am born with #{@numWheels} wheels"
  end
end

b = Bicycle.new()
b.display_details()
b.get_another_rider()
puts "The superclass of Bicycle is #{Bicycle.superclass}"
c = Bicycle.new()

p defined?(Bicycle)
p defined?(b)
x = 1
p defined?(x)
p defined?(@x)
p defined?(@x = 1)
