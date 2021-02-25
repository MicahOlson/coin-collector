class Coin
  def cascade(value)
    quarters = value / 25
    remainder = value % 25
    dimes = remainder / 10
    remainder = remainder % 10
    nickels = remainder / 5
    remainder = remainder % 5
    pennies = remainder
    "You Have: #{quarters} quarter, #{dimes} dime, #{nickels} nickel, #{pennies} penny"
  end
end


# start_value = input
# remainder = (start_value % 25) / 10
# remainder = (remainder % 10) / 5

# quarters = value=>91 / 25
# remainder = value=> % 25
# dimes = remainder / 10
# remainder = remainder % 10
# nickels = remainder / 5
# remainder = remainder % 5
# pennies = remainder

# 91 / 25 = 3
# 91 % 25 = 16
# 16 / 10 = 1
# 16 % 10 = 6
# 6 / 5 = 1
# 6 % 5 = 1
# 1 / 1 = 1