module MyStuff
  def MyStuff.apple()
    puts "I AM APLE!"
  end
  TANGERINE = "Reflection of a dream"#puts MyStuff::Tangerine
end
class Bee
  attr_accessor :buzz
  def initialize()
    @buzz = "BUZZZ"
  end
end
class Stuff
  attr_accessor :tangerine #allows tangerine
  def initialize()
    @tangerine = "And now a thousand years between"
  end
  def apple()
    puts "I AMAN APPLE #{self.tangerine}"

  end
end
class Song
  def initialize(lyrics)
    @lyrics = lyrics
  end
  def sing_me_a_song()
    @lyrics.each {|line| puts line}
  end
end

happy_bday = Song.new(["Happy birthday to you", "Happy birthday to you", "I don't want to get sued", "So I'll stop right there"])

bulls_on_parade = Song.new(["They rally all over", "All over the dock", "With pockets full of shells", "BAND BANG BANG!"])

happy_bday.sing_me_a_song()
bulls_on_parade.sing_me_a_song()
