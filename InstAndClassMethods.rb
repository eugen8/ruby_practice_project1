# https://medium.com/@sgg2123/vs-self-in-ruby-1d4d88170
#
class Person
  @@people = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@people << self
    @mname = "..."
    self.mname << "I am #{name}"
    # self.class.all = self
  end

  def mname
    @mname
  end
  def printmname
    puts "mname is #{mname}" # without attr_accessor :name would have had to write @ i.e. #{@name}
    puts "while name is #{name}"
  end
end

p = Person.new("Eugen")
puts p
p.printmname

