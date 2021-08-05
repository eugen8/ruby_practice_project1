ar1 = ['a', 'b', 4, 'c']

for i in ar1 do
  print "#{i};"
end
puts

ar1.each do |el|
  print "#{el};"
end
puts

ar1.each_with_index do |el, idx|
  print "ar[#{idx}]=#{el}; "
end
puts

i = 0
begin
  print "ar[#{i}]=#{ar1[i]}; "
  i+= 1
end while i < ar1.length

