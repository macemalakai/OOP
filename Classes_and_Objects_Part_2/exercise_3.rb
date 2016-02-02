#class Person
 # attr_reader :name
  #def initialize(name)
   # @name = name
  #end
#end

#bob = Person.new("Steve")
#bob.name = "Bob"

# This code should output an error, because the *attr_reader only displays, or gets.
# It can not set. To change this we can change "att_reader" to "attr_accessor"

class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def person_info
    self
    puts "This person's name is #{@name}"
  end
end

bob = Person.new("Steve")
bob.name = "Bob"

puts bob.person_info