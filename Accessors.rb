
module St1


class Student
  attr_accessor :name
  attr_reader :grade
  attr_accessor :major

  def initialize(name, grade, major = :None)
    @name = name
    @grade = grade
    @major = major
  end

  def to_s
    "Student name: #{name} and grade: #{grade}"
  end
  def nextGrade
    @grade += 1
  end
end

end

s = St1::Student.new('Eugen',12)
puts s
s.name = 'Tom'
s.nextGrade
puts s

module X
  include St1
  s = Student.new('Eugen',"3","Some")
  puts s #Student name: Eugen and grade: 3
end
puts s #Student name: Tom and grade: 13
include St1 # warning by RubyCop
s3 = Student.new("s3","s3grade","LL")
puts s3 #still works, but warning in the editor


#lambdas
# procs

proc_test = Proc.new do
  puts "I am a proc_test"
end
proc_adder = Proc.new do |a, b|
 # return a + b - will cause return of program
 a + b
end
proc_multiplier = Proc.new do |a, b| a * b end
proc_pow = Proc.new { |a, b|
  a ** b
}
proc_test.call
# puts proc_adder.call 3, 2
puts proc_multiplier.call 2, 3 # 6
puts proc_pow.call 2, 3 # 8

lambda_adder = lambda { |a,b|
  puts "lambda_adder ret #{a+b}"
  a + b
}
puts lambda_adder.call 3,2

def someFun(a,b, proc1, lambda1)
  puts 'calling proc1'
  x = proc1.call(a,b)
  puts 'calling lambda1'
  y = lambda1.call(a,b)
  x+y
end

res = someFun(32,12, proc_adder, lambda_adder)
puts "res = #{res}"
puts 'end of program'

#collections
print [3,2,1,5,2,59].collect { |num| num + 1 } #same as map -> result [4, 3, 2, 6, 3, 60]
puts
puts [3,2,1,5,2,59].reduce(:+) # 72
puts [3,2,1,5,2,59].reduce(100, :+) # 172

final =  [2,3,2,1,4,3].inject { |accum, n|
  print "accum=#{accum}, n = #{n}"
  n = accum*2 + n * 2
  n + 3
}
puts "\nfinal = #{final}"
print %w{ cat sheep bear }
print %w( cat sheep bear oysters) # ["cat", "sheep", "bear"]["cat", "sheep", "bear", "oysters"]
puts

puts %x(pwd) #/home/eugen/dev/rb/minitest-tutorial
# https://stackoverflow.com/questions/1274675/what-does-warray-mean

module Api
  module V1
    def index1
      puts "I am index 1"
    end
  end
end

module Api
  module V1
    def index2
      puts "I am index 2"
    end
  end
end

x ||= 232
x ||= 002 #won't do anything anymore
x = x || 823
puts x

puts nil || 2 #2
puts false || 2 #2
puts 0 || 2 #0
if nil
  puts "like true"
else
  puts 'like false'
end


