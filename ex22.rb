puts "I know file I/O and basic I/O"

a_file = ARGV.first

puts """I will rewrite this file: #{a_file}.
Press RETURN if you are ok with this, CTRL-C (^C) if not:
"""
$stdin.gets.chomp

puts "Ok I'm going for it!"
output_file = open(a_file, 'w')
output_file.truncate(0) #erase contents


formatter = "1.%{first}\n2.%{second}\n3.%{third}\n"
puts "Give me a line to write in"
line1 = $stdin.gets.chomp
puts "Give me another line"
line2 = $stdin.gets.chomp
puts "Give me another line"
line3 = $stdin.gets.chomp

output_file.write(formatter % {first: line1, second: line2, third: line3})
puts "All done!"
output_file.close

puts "We also laerned a little about functions and returning values"





