module Lib
  module A
    extend self
    def foo
      puts 'Lib::A::foo'
    end
    def helper
      puts 'Lib::A::helper'
      foo
    end
  end

  module B
    extend A
    def self.bar
      puts 'Lib::B::bar'
      helper
    end
  end
end

puts 'Calling Lib::A::foo:'
Lib::A::foo        # => Lib::A::foo

puts 'Calling Lib::A::helper:'
Lib::A::helper     # => Lib::A::helper; Lib::A::foo

puts 'Calling Lib::B::bar:'
Lib::B::bar        # => Lib::B::bar; Lib::A::helper; Lib::A::foo


#https://www.geeksforgeeks.org/include-v-s-extend-in-ruby/
# Ruby program of Include and Extend

# Creating a module contains a method
module Geek
  def geeks
    puts 'GeeksforGeeks!'
  end
end

class Lord

  # only can access geek methods
  # with the instance of the class.
  include Geek
end

class Star

  # only can access geek methods
  # with the class definition.
  extend Geek
end

# object access
Lord.new.geeks

# class access
Star.geeks

# NoMethodError: undefined method
# `geeks' for Lord:Class
# Lord.geeks
#


# My own exploration
module M1
  module MI6
    # extend self
    class Intel
      attr_accessor :asset
    end
    def outsideAsset
      puts "I am an outsider"
    end
  end
end

# include M1 # without it: uninitialized constant MI6
l = M1::MI6::Intel.new
puts l
include M1::MI6 # method below won't work otherwise. Alternatively can do extend self in moduel MI6
M1::MI6::outsideAsset()