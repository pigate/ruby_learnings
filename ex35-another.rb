blue = true
red = false

if blue && red
  puts "Hi there!"
else
  puts "Not hi there!"
end

if blue and red
  puts "Hi there!"
else
  puts ":Not hi there!"
end

puts "a = false || true"
a = false || true
puts "a: #{a}"
puts "false || true : #{false || true} "
puts "a = false or true"
a = false or true
puts "a: #{a}"
puts  "a = true or false"
a = true or false
puts "a: #{a}"
puts "true or false: #{true or false}"

a = false && true
puts "a = false && true: a= #{a}"
puts "false && true: #{false && true}"

a = true && false
puts "a = true && false: a= #{a}"
puts "true && false: #{true && false}"

a = true && false
puts "a = true && false: a= #{a}"
puts "true && false: #{true && false}"

a = false and true
puts "a = false and true: #{a}"
puts "false and true: #{false and true}"

a = true and false
puts "a = true and false: #{a}"
puts "true and false: #{true and false}"



