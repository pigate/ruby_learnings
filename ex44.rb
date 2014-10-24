#implicit inheritance

class Parent
  def implicit()
    puts "Parent implicit()"  
  end
  def override()
    puts "Parent override()"  
  end
  def altered()
    puts "Parent altered()"
  end
end

class Child < Parent
  def override()
    puts "Child override()"  
  end
  def altered()
    puts "Child, before Parent altered()"
    super()	#calls parent version of altered()
	puts "Child, after Parent altered()"
  end
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()

dad.override()
son.override()

dad.altered()
puts "You ready for child altered?"
$stdin.gets.chomp
son.altered()

puts "Using composition instead of inheritance"
$stdin.gets.chomp
class Other
  def override()
    puts "Other override()"
  end
  def implicit()
    puts "Other implicit()"
  end
  def altered()
    puts "Other altered()"
  end
end

class OtherChild
  def initialize()
    @other =Other.new()  
  end
  def implicit()
    @other.implicit()  
  end
  def override()
    puts "OtherChild override()"  
  end
  def altered()
    puts "Other Child, before, altered()"
	@other.altered()
	puts "OTher Child, after, altered()"
  end
end

other_son = OtherChild.new()
other_son.implicit()
other_son.override()
other_son.altered()