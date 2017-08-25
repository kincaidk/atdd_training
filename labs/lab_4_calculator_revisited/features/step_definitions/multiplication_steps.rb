When(/^I multiply two numbers$/) do
  @prod = Calculator.new.multiply 4,6
end

Then(/^I get the product$/) do
  expect(@prod).to eq 24
end

When(/^I multiply zero by a number$/) do
  @prod = Calculator.new.multiply 4,0
end

Then(/^the product is zero$/) do
  expect(@prod).to eq 0
end

When(/^I multiply one by a number$/) do
  @prod = Calculator.new.multiply 4,1
end

Then(/^the product is the number$/) do
  expect(@prod).to eq 1
end

When(/^I multiply numbers in different orders$/) do
  @prod1 = Calculator.new.multiply 4,6
  @prod2 = Calculator.new.multiply 6,4
end

Then(/^the products are the same$/) do
  expect(@prod1).to eq @prod2
end

When(/^I multiply more than two numbers$/) do
  @prod = Calculator.new.multiply 4,3,2
end

When(/^I multiply a negative number by a positive number$/) do
  @prod = Calculator.new.multiply 4,-6
end

Then(/^the product will be negative$/) do
  expect(@prod).to eq -24
end

When(/^I multiply a negative number by a negative number$/) do
  @prod = Calculator.new.multiply -4,-6
end

Then(/^the product will be positive$/) do
  expect(@prod).to eq 24
end