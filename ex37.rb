'cat' == 'cat' #true
'fat' == 'cat' #true
puts 'fat' === 'cat' #false #=== is actual comparison
puts 1 == 2 #false

puts "Hello" and "Goodbye" #Hello
puts "Hello" && "Goodbye" #Goodbye. && binds a little stronger than 'and'
#so it will go all the way to the end

class Microwave
  def on
    puts "The microwave is on"
  end
  alias :start :on
end

m = Microwave.new
m.start #same as m.on

print "Enter your grade: "
grade = gets.chomp
case grade
when "A"
  puts "Well done!"
when "B"
  puts "Try harder!"
when "C"
  puts "You need some help"
else
  puts "You're just making it up!"
end

if "A" === grade
  puts "Well done!"
elsif "B" === grade
  puts "Try harder!"
elsif "C" === grade
  puts "You need some help"
else
  puts "You're just making it up!"
end

print "Enter you fav letter: "
letter = gets.chomp.downcase
case letter
when "a", "b"
  puts "That's top of the line"
when "c", "d"
  puts "a little lower"
else
  puts "You can't even use a computer!"
end

print "Enter a string: "
some_string = gets.chomp
case
when some_string.match(/\d/) #numberic anywhere in there
  puts "String has numbers"
when some_string.match(/[a-zA-Z]/) #has some alpha somewher. no numbers
  puts "String has alphabetics"
else
  puts "String no alphanumeric"
end


####wrap case in "puts". bc case returns an object. in this case, a string
puts case
when some_string.match(/\d/) #numberic anywhere in there
  "String has numbers" #case returns this. puts will print it
when some_string.match(/[a-zA-Z]/)
  "String has alphabetics"
else
  "String no alphanumbers"
end
###wrapped by 'puts'

class Vehicle
  attr_accessor :number_of_wheels
  def initialize(number_of_wheels) #constructor
    @number_of_wheels = number_of_wheels
  end
  def ===(another_vehicle) #operator overload
    self.number_of_wheels == another_vehicle.number_of_wheels
  end
end

four_wheeler = Vehicle.new 4
two_wheeler = Vehicle.new 2

print "Enter number of wheel for vehicle: "
vehicle = Vehicle.new gets.chomp.to_i

puts case vehicle # tests vehicle ===(another_vehicle)
when two_wheeler # tests vehicle ===(two_wheeler)
  'Vehicle has same number of wheels as two-wheeler!'
when four_wheeler # tests vehicle ===(four_wheeler)
  'Vehicle has the same number of wheels as a four-wheeler!'
else
  'Don\'t know of a vehicle with that wheel arrangement!'
end
