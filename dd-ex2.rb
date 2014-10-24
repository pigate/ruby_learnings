puts "Give me a file!"

filename=$stdin.gets.chomp 

bookworm = open(filename, "r+")

puts bookworm.read



bookworm.truncate(0)

puts "Want to give me two lines? Reply with Y or N"

reply= $stdin.gets.downcase

if reply =="n"
  puts "okay"
else
  puts "commencing"
  puts "give me two lines"
  puts "first line:"
  line1 = $stdin.gets
  puts "seond line:"
  line2 = $stdin.gets

  formatter = "%{first}\n%{second} "
  mystring = formatter % {first: line1, second: line2}
  
  bookworm.write(mystring)
  bookworm.seek(0)
  puts bookworm.read
  bookworm.close
  


end



