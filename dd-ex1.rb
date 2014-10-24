filename = ARGV.first
#create bookworm object who's ready to read file
bookworm = open(filename)

all_content = bookworm.read 

print all_content

bookworm.close




