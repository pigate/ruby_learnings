puts "This is my array"
things = ['a', 'b', 'c', 'd']
puts things[1]
things[1] = 'z'
puts things[1]
puts things

puts "Press key to continue"
$stdin.gets.chomp
puts "*" * 10
puts "Hashmap times!"

states = {
 'Oregon' => 'OR',
 'Florida' => 'FL',
 'California' => 'CA',
 'New York' => 'NY',
 'Michigan' => 'MI'
}

cities = {
  'CA' => 'Los Angeles',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

cities['NY'] = 'New York'
cities['OR'] = 'Portland'

puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"

puts '-'*10
puts "Michigan's abbrev is: #{states['Michigan']}"
puts "New York's abbrev is: #{states['New York']}"

puts '-'*10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

puts '-'*10
states.each do |state, abbrev| #pull each out
  puts "#{state} is abbreviated by #{abbrev}"
end

puts '-'*10
cities.each do |abbrev, city|
  puts "#{city} actually resides in abbrev state: #{abbrev}"
end

puts '-'*10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{abbrev} = #{state} contains city #{city}"
end

puts '-'*10
state = states['Texas'] #doesn't exist. state = nil

if not state #if state == nil
  puts "Sorry, no Texas"
end

city = cities['TX']
city ||= 'Does not exist'
puts "The city for the state of 'TX' is: #{city}"
