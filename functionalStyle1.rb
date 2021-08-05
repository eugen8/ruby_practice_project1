#https://womanonrails.com/functional-programming-ruby

adderReducer = lambda { |accum, el|
  accum + el
}
adderReducerProc = proc { |accum, el|
  accum + el
}
sumOfEls = [1, 2, 3, 4, 5].reduce(&adderReducer)
p "sumOfEls = #{sumOfEls}"
p "same with passing proc: #{[1, 2, 3, 4, 5].reduce(&adderReducerProc)}"
puts [1, 2, 3, 4, 5].reduce &(lambda { |a, b|
  a + b
})

puts([1, 2, 3, 4, 5].reduce do |a, b|
  a + b
end)

def addAsAMethod(a,b)
  a + b
end


puts "calling method on a symbol that's a method: #{method(:addAsAMethod).call(5,9)}" # 14

def takeASym(fun)
  method(fun).call(32,2)
end
puts takeASym(:addAsAMethod)
puts takeASym("addAsAMethod")


