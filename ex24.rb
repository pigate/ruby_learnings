puts "Let's practice everything."
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

poem = <<END
\tThe lovely word
with logic so firmly planted
cannot discent \n the needs of love
nor comprehend passion from intuition.
\n Dracula needs an \n\t\texplanation.
END

puts "------------"
puts poem
puts "------------"

five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

def secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans / 100
  crates = jars / 100
  return jelly_beans, jars, crates
end

start_point = 10000
beans, jars, crates = secret_formula(start_point)

puts "With a starting point #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates"

start_point = start_point / 10
