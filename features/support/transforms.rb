CAPTURE_AMOUNT = Transform /^\$(\d+)$/ do |number|
  number.to_i
end