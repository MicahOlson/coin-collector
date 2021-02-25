class Coin
  def cascade(value)
    if value.include?(".")
      value = (value.to_f * 100).to_i
    else
      value = value.to_i
    end
    quarters = value / 25
    remainder = value % 25
    dimes = remainder / 10
    remainder = remainder % 10
    nickels = remainder / 5
    pennies = remainder % 5
    "You Have: #{plural(quarters, 'quarter')}, #{plural(dimes, 'dime')}, #{plural(nickels, 'nickel')}, #{plural(pennies, 'penn')}"
  end
  def plural(amount, type)
    type == "penn" ? 
      (amount > 1 ? "#{amount} #{type}ies" : "#{amount} #{type}y") :
      (amount > 1 ? "#{amount} #{type}s" : "#{amount} #{type}")
  end
end