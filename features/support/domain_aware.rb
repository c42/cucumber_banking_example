module DomainAware
  def my_account
    @account ||= Account.new
  end

  def slot
    @slot ||= Slot.new
  end

  def teller
    @teller ||= Teller.new(slot)
  end
end

World(DomainAware)