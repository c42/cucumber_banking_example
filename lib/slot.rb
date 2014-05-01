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