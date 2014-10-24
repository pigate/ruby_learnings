def init()
  puts "You enter a dark room with two doors. Do you go through door 1 or 2?"
  print "> "
  door_choice = $stdin.gets.chomp
  return door_choice
end

door = init()
while ((door != "1" && door != "2"))
  puts "try again!"
  print "> "
  door = init()
end

if door == "1"
  puts "There's a giant bear here eating a cheese cake.  What do you do?"
  puts "1. Take the cake."
  puts "2. Scream at the bear."
  print "> "
  bear = $stdin.gets.chomp
  if bear == "1"
    puts "The bear eats your face."
  elsif bear == "2"
    puts "Well, doing %s is probably better. Bear runs away." %bear
  end
elsif door == "2"
    puts "You stare into the endless abyss at Cthulu's retina. Do #1, 2, or 3?"
   puts "1. Blueberries."
  puts "2. Yellow jacket clothespins."
  puts "3. Understanding revolvers yelling melodies."
  print "> "
  insanity = $stdin.gets.chomp
  if insanity == "1" or instanity == "2"
    puts "Your body survives powerfully."
  else
    puts "The insanity rots your eyes."
  end
else
  puts "You stumble around and fall on a knife and die. Goodbye."
end



