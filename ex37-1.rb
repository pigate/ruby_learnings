#all objects are subclass of Class

#overriding Class's new
class Class
  alias oldNew new
  def new(*args) #run by default when create new object
    print "Creating a new class ", self.name, "\n" #add this
    oldNew(*args) #the original method is still called
  end
end

class Name
end

n = Name.new

class Bird
  def initialize(age)
    (1..age).each do |i|
      puts "tweet #{i}"
    end
  end
end

b = Bird.new(3)
