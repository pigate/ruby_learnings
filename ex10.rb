print "How old are you?"
age = gets.chomp #picks it up as a string
print "How tall are you?"
height = gets.chomp
print "How much do you weight?"
weight = gets.chomp.to_i #convert to int

intage = age.to_i

puts "So, you're #{age * 2} old, #{height} tall, and weigh #{weight * 2} pounds."

puts "My int age is #{intage * 2}"


