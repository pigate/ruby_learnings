def add(a, b)
  puts "ADDING #{a} + #{b}"
  return a + b
end

def subtract(a, b)
  puts "SUBTRACTING #{a} - #{b}"
  return a - b
end

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  return a * b
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  return a / b
end

puts "Let's do some math!"

age = add(1, 2)
height = subtract(15, 6)
weight = multiply(2, 3)
num_apples = divide(20, 4.5)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, Number of Apples: #{num_apples}"

what = add(age, subtract(height, multiply(weight, num_apples)))

puts "That becomes: #{what}"
