require_relative 'lexicon.rb'

class ParserError < Exception
end

class Sentence
  #subject = ['noun', 'asdfas'], verb= ['verb', 'asdf'], object= ['noun', 'asdf']
  def initialize(subject, verb, object)
    @subject = subject[1]
    @verb = verb[1]
    @object = object[1]
  end
  attr_reader :subject, :verb, :object
end

#returns type of first word in word_list
def peek(word_list)
  if word_list && word_list != []   
       word = word_list[0]
      return word[0]
  else
   return nil
  end
end

#test for expecting first word in word_list
#expecting a type
#pops off front from word_list
def match(word_list, expecting)
  if word_list
    word = word_list.shift #pops from the front
    if word[0] == expecting
      return word
    else
      return nil
    end
  else
    return nil
  end
end

#skip words until (useful for skipping 'stops' types)
def skip(word_list, word_type)
  while peek(word_list) == word_type
    match(word_list, word_type)
  end
end

def parse_verb(word_list)
  skip(word_list, 'stops')
  if peek(word_list) == 'verb'
    return match(word_list, 'verb')
  else
    raise ParserError.new("parse_verb: Expected a verb next.")
  end
end

#parses for noun or direction
def parse_object(word_list)
  skip(word_list, 'stops')
  word_type = peek(word_list)
  if (word_type == 'noun')
    return match(word_list, 'noun')
  elsif (word_type == 'direction')
    return match(word_list, 'direction')
  else
    raise ParserError.new("Expected noun or direction.")
  end
end


def parse_subject(word_list)
  skip(word_list, 'stops')
  next_word = peek(word_list)
  if next_word == 'noun'
     return match(word_list, 'noun') #bear, princess
  elsif next_word == 'verb'
     return ['noun', 'player'] #implied that player does verb
	#eg) will do --> player will do
  else
    raise ParserError.new("Expected a verb next.")
  end
end

def parse_sentence(word_list)
  subj = parse_subject(word_list) #get the first subject possible
  verb = parse_verb(word_list) #get first verb possible
  obj = parse_object(word_list) #get closes object possible. raises error if there isn't any
  return Sentence.new(subj, verb, obj)
end
