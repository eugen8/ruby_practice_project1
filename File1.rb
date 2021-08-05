#1.upto(5) {|n| puts n } # Prints '12345'

a = [32,3,2,5,]

a.each do |x|
  printf(" %d ",x * 2)
end
puts
a2 = a.map {|n| n*3}
a.each { |x| print "#{x}," }
puts
a2.each { |x| print "#{x}," }

module Greeter
  def greet
    puts "Hello"
  end
end

class Person
  include Greeter
end

alice = Person.new
alice.greet
puts(Person.name) # Person
def someFun(x,y)
  puts "args to someFun were #{x} and #{y}"
end
someFun "hll", 238 #parenthesis are optional
puts "alice is first #{alice}" #alice is first #<Person:0x0000561b7cb9c6a0>
alice = 3
puts "alice is now #{alice}" #alice is now 3

hash = {a: 1, b:"hello"}
puts(hash) #{:a=>1, :b=>"hello"}

# regexes
puts /hello.*/.match("Eugen says hello to all") #hello to all
puts "The future is Ruby" =~ /Ruby/ #14
puts "Concat int " + 3.to_s

hash2 = {
  "do" => "something",
  "isthere?" => true
}
puts "hash2.isthere? = " + hash2["isthere?"].to_s
hash3 = {
  :cheatsheet1 => "https://www.codecademy.com/learn/learn-ruby/modules/learn-ruby-hashes-and-symbols-u/cheatsheet",
  scala: "https://www.scala-lang.org/"
}
puts hash3[:cheatsheet1]
puts "hash2 with symbol => " + hash2[:isthere?].to_s #nil, not found
puts "hash2 with string => " + hash2['isthere?'].to_s #hash2 with string => true

hash3.each { |tech, link| puts "  tech #{tech} => #{link}" }
hash3.each do
|tech, link| puts "  tech #{tech} => #{link}"
end
hash4 = hash3.select do
  |t, x|
  puts t == :scala
  t.to_s == "scala" && x.length > 8 # or t == :scala
end
puts hash4 #{:scala=>"https://www.scala-lang.org/"}

puts hash2
"B".upto("F") { |letter| print letter, " " } #B C D E F
puts ;puts 5.respond_to? "to_s" #true

# nil empty blank present presence => https://blog.arkency.com/2017/07/nil-empty-blank-ruby-rails-difference/
puts " #{nil.nil?}, #{hash3.empty?}"
#conditional assignment -> assigns if it's nil
myname = nil
myname ||= "Eugen"
myname ||= "Tom"
puts "myname is #{myname}" #myname is Eugen

#alternatives to push method
a << 990; a.push 3,2,3
print a;puts;

def m1 (name, status)
  puts "#{name} your status is #{status}"
end
m1("Eugen", "active")
m1 "Tom", "passive"
b = a.map! { |x| x + 1 } #collect is an alias for map
puts "a is: #{a} is changed because of ! and b is also same as a: #{b}"

#Yield https://www.codecademy.com/learn/learn-ruby/modules/learn-ruby-blocks-procs-and-lambdas-u/cheatsheet
# In Ruby, the yield keyword is used to transfer control from a method to a block and then back to the method once executed.
def yield_test
  puts "I'm inside the method."
  yield
  puts "I'm also inside the method."
end
yield_test { puts ">>> I'm butting into the method!" }
#I'm inside the method.
# >>> I'm butting into the method!
# I'm also inside the method.
#
# Yield in Ruby is very different from yield in Python. https://stackoverflow.com/questions/2504494/are-there-something-like-python-generators-in-ruby
#


# Enumerator
# A class which allows both internal and external iteration.
#   An Enumerator can be created by the following methods.
#     Kernel#to_enum, Kernel#enum_for,  ::new
enumerator = %w(one two three).each
print %w(a  b c d) #["a", "b", "c", "d"]
puts
puts enumerator.class # => Enumerator

enumerator.each_with_object("foo") do |item, obj|
  puts "#{obj}: #{item}"
end

to_three = Enumto_three = Enumerator.new do |y|
  3.times do |x|
    y << x
  end
end
puts "to_three is #{to_three}"
to_three_with_string = to_three.with_object("foo")
to_three_with_string.each do |x,string|
  puts "#{string}: #{x}"
end
#to_three is #<Enumerator:0x00005604f9f23a60>
# foo: 0
# foo: 1
# foo: 2

#infinite sequences:
# https://rossta.net/blog/infinite-sequences-in-ruby.html
# https://stackoverflow.com/questions/2504494/are-there-something-like-python-generators-in-ruby

def eternal_sequence
  Enumerator.new do |enum|
    i = 0
    while true
      enum.yield i # <- Notice that this is the yield method of the enumerator, not the yield keyword
      i +=1
    end
  end
end
puts "#{eternal_sequence.take(3)}" #[0, 1, 2]

proc_test = Proc.new { puts "I am the proc method!" }
lambda_test = lambda { puts "I am the lambda method!"}

proc_test.call # => I am the proc method!
lambda_test.call # => I am the lambda method!

#https://www.codecademy.com/learn/learn-ruby/modules/learn-ruby-blocks-procs-and-lambdas-u/cheatsheet
# lambdas, procs
# In Ruby, a lambda is an object similar to a proc. Unlike a proc, a lambda requires a specific number of arguments passed to it, and it returns to its calling method rather than returning immediately.
def proc_demo_method
  proc_demo = Proc.new { return "Only I print!" }
  proc_demo.call
  "But what about me?" # Never reached
end
puts proc_demo_method
# Output
# Only I print
# (Notice that the proc breaks out of the method when it returns the value.)
def lambda_demo_method
  lambda_demo = lambda { return "Will I print?" }
  lambda_demo.call
  "Sorry - it's me that's printed."
end
puts lambda_demo_method
# Output
# Sorry - it's me that's printed.
# (Notice that the lambda returns back to the method in order to complete it.)

puts Math::PI # from module Math