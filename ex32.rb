the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'organges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

for number in the_count 
  puts "This is count #{number}"
end

the_count.each do |number|
  puts "This is count: #{number}"
end

fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

change.each { |i| puts "I got #{i}" }

elements = []

(0..5).each do |i|
  elements << i
end

(0..5).each do |i|
  puts "Hello: #{i}"
end
elements.each { |i| puts "Elements was put in: #{i}" }


