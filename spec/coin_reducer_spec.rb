require ('rspec')
require ('pry')
require ('coin_reducer')

describe("Coin") do
  before(:each) do 
    @coin = Coin.new
  end
  describe("cascade") do
    it("returns the value from the input with the smallest amount of coins needed to match the inputted value") do
      expect(@coin.cascade('91')).to(eq("You Have: 3 quarters, 1 dime, 1 nickel, 1 penny"))
    end
    it("returns the value from the input with the smallest amount of coins needed to match the inputted value") do
      expect(@coin.cascade('1.91')).to(eq("You Have: 7 quarters, 1 dime, 1 nickel, 1 penny"))
    end
  end
  describe("plural") do
    it("returns the proper description of a string if the value is greater than 1") do
      expect(@coin.plural(2, "quarter")).to(eq("2 quarters"))
    end
    it("returns the proper description of a string if the value is greater than 1") do
      expect(@coin.plural(1, "quarter")).to(eq("1 quarter"))
    end
    it("returns the plural version of a penny") do
      expect(@coin.plural(1, 'penn')).to(eq("1 penny"))
    end
    it("returns the plural version of a penny") do
      expect(@coin.plural(2, 'penn')).to(eq("2 pennies"))
    end
  end
end