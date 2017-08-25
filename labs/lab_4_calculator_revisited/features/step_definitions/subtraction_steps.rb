require 'calculator'

When /^I subtract two numbers$/ do
  @difference = Calculator.new.subtract 6, 23
end

Then /^I get the difference$/ do
  expect(@difference).to eq -17
end

When /^I subtract a number by zero$/ do
  @difference = Calculator.new.subtract 6, 0
end

Then /^the difference will be the number$/ do
  expect(@difference).to eq 6
end

When(/^I subtract numbers that are not equal, in different orders$/) do
  @difference1 = Calculator.new.subtract 6, 23
  @difference2 = Calculator.new.subtract 23, 6
end

Then(/^the differences are different$/) do
  expect(@difference1).to_not eq @difference2
end

When(/^I subtract numbers that are equal, in different orders$/) do
  @difference1 = Calculator.new.subtract 6, 6
  @difference2 = Calculator.new.subtract 6, 6
end

Then(/^the differences are both 0$/) do
  expect(@difference1).to eq 0
  expect(@difference2).to eq @difference1
end

When(/^I subtract more than two numbers$/) do

end

When(/^I subtract a negative number by a positive number$/) do
  pending
end

Then(/^the difference will be negative$/) do
  pending
end

When(/^I subtract a positive number by a negative number$/) do
  pending
end

Then(/^the difference will be positive$/) do
  pending
end