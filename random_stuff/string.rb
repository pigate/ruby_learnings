word = "Hi there budddy"
word.split #auto splits by ' '
word.split[0] 
word.split.first #same as above
word.split.last
word.split[2] #if exists, else, nil


array_of_char = ['a', 'b', 'c']
word = array_of_char.join("") #join with nothing between
word = array_of_char.join(",") #with ',''s between

def sort_word_letters the_word
  the_word.chars.sort.join #pretty much the same as mine down there
end
=begin
def sort_word_letters the_word
   the_word.split("").sort{|a, b| a <=> b}.join("")
   #first split to put indiv chars in array
   #sort chars
   #join them back to create string
end
=end
