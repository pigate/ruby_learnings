sentence = "I like you a lot"
words = sentence.split(' ')
double_words = words.map { |word| word*2 }
puts double_words
