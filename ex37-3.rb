begin
  file = File.open("myFile.txt", "w")
rescue
  #handle any errors here
ensure
  file.close unless file.nil? #not the return val
end

=begin #multiline commenting
begin
  #attempt some stuff 
rescue Exception => e
  puts e.message
rescue SomeOtherException => some_other_var
  #do other stuff
else
  #do more stuff
ensure
  #runs no matter if exception or not
end
=end

puts "Hi there!"

i = 5
while i < 10
  puts i
  i += 1
end

while i > 5 do
  puts i
  i -= 1
end

puts "Right now, i = #{i}"
begin 
  puts i
  i -= 1
end while i > 5

until i==10 
  puts i
  i += 2
end

puts "Right now, i = #{i}"

begin 
  puts i
  i -= 2
end until i < 5

puts "*"*3

for ip in 0..5
  puts "Value of local var is #{ip}"
end

puts "*"*3

(0..5).each do |ip|
  puts "Value of local var is #{ip}"
end

puts "*"*3

for ip in 0..5
  if ip%2 == 0
    next
  end
  puts "Value of local var is #{ip}"
end

for ip in 0..4
  if ip < 2 then
    puts "Value of local var is #{ip}"
   # redo #inf loop... #retry is similar too
  end
end

puts "Hello\b"

def do_stuff()
  $glob_stuff = 1
end

do_stuff()
puts $glob_stuff

=begin
Class/Object scope
@var/@@classVar
=end
