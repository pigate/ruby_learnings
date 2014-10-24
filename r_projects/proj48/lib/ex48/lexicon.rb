#capitalize if global
  DIRECTION = ['north', 'south', 'east', 'west']
  VERB = ['go', 'kill', 'eat', 'run', 'eats', 'runs']
  STOPS = ['the', 'stop', 'in']
  NOUNS = ['bear', 'princess', 'player', 'honey']
module Lexicon
  def Lexicon.scan(sentence)
    words = sentence.split(' ')
    result = []
    #check for each word if north, south, east, west. if so, classify
    #downcases 
    words.each do |word|
        down = word.downcase
        if DIRECTION.include?(down)
          result << ['direction', word]
        elsif VERB.include?(down)
          result <<  ['verb', word]
        elsif STOPS.include?(down)
          result <<  ['stops', word]
        elsif NOUNS.include?(down)
          result << ['noun', word]
        elsif not (word.scan(/[0-9]+/).empty?)
          result << ['number', word.to_i]
        else
          result << ['error', word]
        end
    end
    return result
  end
end

