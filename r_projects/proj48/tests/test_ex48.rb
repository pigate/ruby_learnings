#require "lib/NAME.rb"
#https://github.com/seattlerb/minitest/blob/master/lib/minitest/assertions.rb
require "ex48/lexicon.rb"
require "ex48/parser.rb"
require "minitest/autorun"
class TestParser < Minitest::Test
  def test_good_sentence()
    phrase = "run north"
    result = Lexicon.scan(phrase)
    sentence = parse_sentence(result)
    assert_equals(sentence.subject, 'player')
    assert_equals(sentence.verb, 'run')
    assert_equals(sentence.object, 'north')
    phrase = "bear eats the honey"
    result = Lexicon.scan(phrase)
    sentence = parse_sentence(result)
    assert_equals(sentence.subject, 'bear')
    assert_equals(sentence.verb, 'eat')
    assert_equals(sentence.object, 'honey')
  end
  def test_bad_sentence()
    phrase = "eraser go north"
    result = Lexicon.scan(phrase)
    assert_raises ParserError do
      sentence = parse_sentence(result)
    end
  end
end

class TestLexicon < Minitest::Test
  def test_directions()
    assert_equal(Lexicon.scan("North"), [['direction', 'North']])
    result = Lexicon.scan("north south east")
    assert_equal(result, [['direction', 'north'], ['direction', 'south'], ['direction', 'east']])
  end
  def test_verbs()
    assert_equal(Lexicon.scan("go"), [['verb', 'go']])
    result = Lexicon.scan("go kill eat")
    assert_equal(result, [['verb', 'go'], ['verb', 'kill'], ['verb', 'eat']])
  end
  def test_stops()
    assert_equal(Lexicon.scan("the"), [['stops', 'the']])
    result = Lexicon.scan('the stop in')
    assert_equal(result, [['stops', 'the'],['stops', 'stop'],['stops', 'in']])
  end
  def test_nouns()
    assert_equal(Lexicon.scan("bear"), [['noun', 'bear']])
    result = Lexicon.scan("bear princess")
    assert_equal(result, [['noun', 'bear'], ['noun', 'princess']])
  end 
  def test_numbers()
    assert_equal(Lexicon.scan("1234"), [['number', 1234]])
    result = Lexicon.scan("3 91234")
    assert_equal(result, [['number', 3], ['number', 91234]])
  end
  def test_errors()
    assert_equal(Lexicon.scan("ASDFADFADF"), [['error', "ASDFADFADF"]])
    result = Lexicon.scan("bear IAS princess")
    assert_equal(result, [['noun', 'bear'], ['error', 'IAS'], ['noun', 'princess']])
  end
end
