# lib/string_calculator.rb
class StringCalculator

  def self.add(input)
    # raise "add only accepts strings" unless x.kind_of?(String)

    if input.empty?
      0
    else
      numbers = input.split(",").map { |num| num.to_i }
      # numbers.inject(0) { |agg, n| agg + n }
      numbers.reduce(:+)
    end
  end
end
