#reference: http://www.rubyinside.com/how-to/ruby-sort-hash
people = {
  "Joan" => 21,
  "Alfred" => 38,
  "Penny" => 19
}

named_people = people.sort_by { |name, age| name}
print named_people, "\n"
aged_people = people.sort_by { |name, age| age}
print aged_people, "\n"

aged_people.each { |name, age| puts "name: #{name}, age: #{age}"}

#hash filled with other hash
hash_people = {
  :fred => { :name => "Fred", :age => 23 },
  :joan => { :name => "Joan", :age => 18 },
  :pete => { :name => "Pete", :age => 54 }
}
print hash_people.sort_by { |k, v| v[:age]}
