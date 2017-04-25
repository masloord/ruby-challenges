# ### Challenge 3 - Bank Transactions
#
# Create a prompt that asks the user if they would like to display their balance, withdraw or deposit. Write three methods to perform these calculations and output the result to the user. Here is a sample output:
#
# ```
# Your current balance is
# 4000
# What would you like to do? (deposit, withdraw, check_balance)
# deposit
# How much would you like to deposit?
# 1000
# Your current balance is 5000
# Are you done?
# yes
# Thank you!
# ```
@balance = 4000
puts 'display your bank account yes or no'
prompt = gets.chomp
puts @balance if prompt == 'yes'
until @done == 'yes'

  puts 'What would you like to do? (deposit, withdraw, check_balance)'
  choice = gets.chomp

  def withdraw(amtw)
    @new_balance = @balance - amtw.to_i
    puts "your  new balance is #{@new_balance}"
  end

  def deposit(amtd)
    @new_balance = @balance + amtd.to_i
    puts "your  new balance is #{@new_balance}"
  end

  if choice == 'withdraw'
    puts 'how much would you like to withdraw'
    withdraw_amt = gets.chomp
    withdraw(withdraw_amt)

  elsif choice == 'deposit'
    puts 'how much would you like to deposit'
    deposit_amt = gets.chomp
    deposit(deposit_amt)
  elsif choice == 'check balance'
    puts @new_balance
  end

  puts 'Are you done'
  @done = gets.chomp

  puts'thank you' if @done == 'yes'

end
