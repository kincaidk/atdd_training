When /^I divide two numbers$/ do
  @quo = Calculator.new.divide 24, 6
end

Then(/^I get the quotient$/) do
  expect(@quo).to eq 4
end

When(/^I divide zero by a number$/) do
  @quo = Calculator.new.divide 0, 6
end

Then(/^the quotient is zero$/) do
  expect(@quo).to eq 0
end

When(/^I divide by zero$/) do
  @quo = Calculator.new.divide 24, 0
end

Then(/^an error is raised\.$/) do
  expect {@quo.divide(12, 0)}.to raise_error(ZeroDivisionError)
end

When(/^I divide a number by one$/) do
  @quo = Calculator.new.divide 24, 1
end

Then(/^the quotient is the number$/) do
  expect(@quo).to eq 24
end

When(/^I divide numbers that are NOT equal, in different orders$/) do
  @quo1 = Calculator.new.divide 24, 6
  @quo2 = Calculator.new.divide 6, 24
end

Then(/^the quotients are different$/) do
  expect(@quo1).to_not eq @quo2
end

When(/^I divide numbers that are equal, in different orders$/) do
  @quo1 = Calculator.new.divide 24, 24
  @quo2 = Calculator.new.divide 24, 24
end

Then(/^the quotients are both one$/) do
  expect(@quo1).to eq @quo2
  expecct(@quo1).to eq 1
end

When(/^I divide more than two numbers$/) do
  @quo = Calculator.new.divide 24, 4, 3
end

Then(/^I will get the quotient$/) do
  expect(@quo).to eq 2
end

When(/^I divide a negative number by a positive number$/) do
  @quo = Calculator.new.divide -24, 2
end

Then(/^the quotient will be negative$/) do
  expect(@quo).to eq -12
end

When(/^I divide a negative number by a negative number$/) do
  @quo = Calculator.new.divide -24, -2
end

Then(/^the quotient will be positive$/) do
  expect(@quo).to be 12
end