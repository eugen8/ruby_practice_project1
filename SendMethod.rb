class Grapes
  def rippen(*args)
    puts 'Hello '+ args.join('|')
  end
end

g = Grapes.new
d = :rippen
g.send(d,"l",:kklfda90,32,2.0,0x9032)
m = g.method(d)
m.call('dsl"dsl"',"oowwoow")
puts m.owner #grapes
(1..10) .map(&m)


# https://stackoverflow.com/questions/36812647/what-does-ampersand-dot-mean-in-ruby
# Safe navigator
g&.rippen("hello",3)
g=nil
g&.rippen("hello",3)# nothing happens
puts g&.rippen("hello",3) # empty line
puts "the end"

