#template to follow
formatter = "Hello there %{first} I like %{second} and I like %{third} better %{fourth} of July!!"

#assign the following values. 
#will print in order of template up there
puts formatter % {first: 1, second: 2, fourth: 4, third: 43}

puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}

puts formatter % {first: "one", second: "true", third: "heart", fourth: "lives"}

#puts formatter % {first: true, second: true, fourth: true} <-- has error. not full yet


puts formatter % {first: true, second: false, third: true, fourth: false, fourth: true}

#puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}










