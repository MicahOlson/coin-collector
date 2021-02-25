require ('rspec')
require ('pry')
require ('coin_reducer')

describe("Coin") do
  before(:each) do 
    @coin = Coin.new
  end
  describe("cascade") do
    it("returns the value from the input with the smallest amount of coins needed to match the inputted value") do
      expect(@coin.cascade(91)).to(eq("You Have: 3 quarter, 1 dime, 1 nickel, 1 penny"))
    end
  end
  # describe("plural") do
  #   it("returns the proper description of a string if the value is greater than 1")
  #     @coin   
  #   expect()
  #   end
  # end
end

# describe "Before and after hooks" do 
#   before(:each) do 
#      puts "Runs before each Example" 
#   end 
  
#   after(:each) do 
#      puts "Runs after each Example" 
#   end 
  
#   before(:all) do 
#      puts "Runs before all Examples" 
#   end 
  
#   after(:all) do 
#      puts "Runs after all Examples"
#   end 
  
#   it 'is the first Example in this spec file' do 
#      puts 'Running the first Example' 
#   end 
  
#   it 'is the second Example in this spec file' do 
#      puts 'Running the second Example' 
#   end 
# end