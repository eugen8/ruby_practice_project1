
class OtherError < StandardError
  def initialize(msg)
    super
    @msg = msg
  end

  def to_s
    "#{self.class} says #{@msg}"
  end
end
def throwSomething()
  # raise "OOhh snap, this function is done here now"
  # raise StandardError
  # raise StandardError.new("some standard error")
  raise OtherError.new("oops, snap and done")
end

begin

  throwSomething
rescue
  puts ($!).class # when string => RuntimeError
  # when an array => TypeError
  #
  puts $! #OOhh snap, this function is done here now
  puts "some error occured"
end