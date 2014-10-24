def cows_and_moons(cow_count, moon_count)
  puts "You have #{cow_count} cows and #{moon_count} moons!"
end

puts "Lets give the function some numbers from our script."
cows_and_moons(20, 30)

puts "Or, let's user variables from our script: "
amount_of_cows = 15
amount_of_moons = 20
cows_and_moons(amount_of_cows, amount_of_moons)

puts "We can do math inside"
cows_and_moons(1+2, 3+4)

