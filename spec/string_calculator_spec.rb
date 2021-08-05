# https://semaphoreci.com/community/tutorials/getting-started-with-rspec
# THIS IS RSPEC
require 'string_calculator'
describe StringCalculator do
  describe ".add" do
    context "give empty string" do
      it "returns zero" do
        expect(StringCalculator.add("")).to eq(0)
      end
    end
    context "two numbers" do
      context "given '2,4'" do
        it "returns 6" do
          expect(StringCalculator.add("2,4")).to eql(6)
        end
      end

      context "given '17,100'" do
        it "returns 117" do
          expect(StringCalculator.add("17,100")).to eql(117)
        end
      end
    end
  end
end