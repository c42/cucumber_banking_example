class Account
  def initialize
    @amount = 0
  end

  def deposit(amount)
    @amount = amount
  end

  def balance
    @amount
  end

  def withdraw(amount)
    @amount = @amount - amount
  end
end

class Teller
  def initialize(slot)
    @slot = slot
  end

  def withdraw(account, amount)
    account.withdraw amount
    @slot.deposit amount
  end
end

class Slot
  def initialize
    @amount = 0
  end

  def deposit(amount)
    @amount = amount
  end

  def dispense
    amount = @amount
    @amount = 0
    amount
  end
end

Given /^I have \$(\d+) in my account$/ do |amount|
  amount = amount.to_i
  @account = Account.new
  @account.deposit amount
end

When /^I withdraw \$(\d+)$/  do |amount|
  amount = amount.to_i
  @slot = Slot.new
  @teller = Teller.new(@slot)
  @teller.withdraw @account, amount
end


Then /^I should get \$(\d+)$/  do |amount|
  amount = amount.to_i
  expect(@slot.dispense).to eq amount
end


And /^My account balance should be \$(\d+)$/  do |balance|
  balance = balance.to_i
  expect(@account.balance).to eq balance
end