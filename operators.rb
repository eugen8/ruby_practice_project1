
class Opers
  attr_accessor :some_value
end

# Safe navigation operator
def useSafeNav
  if rand(2)==1
    snav = Opers.new
    snav.some_value = "Hello there"
  end
  snav&.some_value
end
safeNavRes = (1..5).map { |v| "[#{v}: #{useSafeNav}]"  } # [1: Hello there],[2: ],[3: Hello there],[4: Hello there],[5: ]
puts safeNavRes.join(',')

# Conditional assignment (it is not null-coalesce)
d ||= 90
d ||= 20
puts d #90