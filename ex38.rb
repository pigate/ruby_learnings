choice = ARGV.first

ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there's not 1o things in that list. Let's fix that"

stuff = ten_things.split(' ')
more_stuff = ["Day", "NIght", "Lolli", "Jolly", "Polish", "hot", "dog"]

def pop(arr)
  return arr.pop()
end
def push(arr, item)
  arr << item
end
if choice == '1'
  while stuff.length !=10
  next_one = more_stuff.pop
  puts "Adding: #{next_one}"
  stuff.push(next_one)
  puts "There's #{stuff.length} items in stuff"
  end
else
  while stuff.length != 10
    next_one = pop(more_stuff)
    puts "Adding: #{next_one}"
    push(stuff, next_one)
    puts "There's #{stuff.length} items in stuff"
  end
end

puts "There we go: #{stuff}"

puts "Let's do some thing with stuff: "

puts stuff[1]
puts stuff[-1]
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join('#')
