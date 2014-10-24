user_name = ARGV.first
prompt = '>'

puts "Hi #{user_name}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name}? ", prompt
likes = $stdin.gets.chomp #prompt stays there until user enters

puts "What is your fav color #{user_name}?", prompt 
color = $stdin.gets.chomp

puts "What is your fav season #{user_name}?", prompt
season = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me,
your favorite color is #{color},
and your favorite season is #{season}
"""


