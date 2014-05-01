Given /^I have (#{CAPTURE_AMOUNT}) in my account$/ do |amount|
  my_account.deposit amount
end

When /^I withdraw (#{CAPTURE_AMOUNT})$/ do |amount|
  teller.withdraw my_account, amount
end


Then /^I should get (#{CAPTURE_AMOUNT})$/ do |amount|
  expect(slot.dispense).to eq amount
end


And /^My account balance should be (#{CAPTURE_AMOUNT})$/ do |balance|
  expect(my_account.balance).to eq balance
end