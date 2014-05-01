class Teller
  def initialize(slot)
    @slot = slot
  end

  def withdraw(account, amount)
    account.withdraw amount
    @slot.deposit amount
  end
end