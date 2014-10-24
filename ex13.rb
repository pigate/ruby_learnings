first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"
puts "Are you sure about #{second}? [Y/n]"

us_input = $stdin.gets #use when have argv specified

if us_input == "Y"
  puts "good choice"
else
  puts "ok then"
end

