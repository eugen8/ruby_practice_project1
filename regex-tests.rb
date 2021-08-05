puts /hay/ =~ 'haystack'   #=> 0
puts /y/.match('haystack') #=> #<MatchData "y">

#https://ruby-doc.org/core-2.4.0/Regexp.html

#matching groups
m1 = /[csh](..) [csh]\1 in/.match("The cat sat in the hat")
puts m1[0] + ' ' + m1[1] + ' '

print m1[0,1]; puts
print m1[0,3]; puts #["cat sat in", "at"]
print m1[0..2]; puts #["cat sat in", "at"] mtch[range] → array

print m1[-1,9]; puts # ["at", nil, nil, nil, nil, nil, nil, nil, nil]

m  = /(?<foo>a+)b/.match("ccaaab")
puts m["foo"] #aaa
puts m[:foo] #aaa
puts "#{m[0,3]}" #["aaab", "aaa"]

puts m.length #2

