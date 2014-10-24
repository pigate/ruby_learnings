src, dest = ARGV

puts "Copying from #{src} to #{dest}"

#we could do these two on one line?
in_file = open(src)
indata = in_file.read

puts "The input file is #{indata.length} bytes long."

puts "Does the output file exist? #{File.exist?(dest)}"
puts "Ready, hit RETURN to continue, CTRL-C(^C) to abort!"
$stdin.gets

out_file = open(dest, 'w')
out_file.write(indata)

puts "Alright, all done."

out_file.close
in_file.close
