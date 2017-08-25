Given(/^I am on the Budget rental car site$/) do

end

When(/^I search for cars available for the weekend$/) do
  on(Homepage).location_field = 'cmh'
  on(Homepage).start_date = '09012017'
  on(Homepage).search_car_select
  on(Homepage).end_date = '09032017'
  on(Homepage).search_car_select
end

Then(/^rental rates for a Compact car displayed$/) do
  on(Homepage).wait_until(10) {on(Homepage).car_type_element.visible?}
  expect(on(Homepage).car_type_element.exists?).to be true
end

When(/^I search for available cars$/) do
  # on(Homepage).wait_until(6) {}
  on(Homepage).location_field = 'cmh'
  on(Homepage).start_date = '09012017'
  on(Homepage).search_car_select
  on(Homepage).end_date = '09032017'
  on(Homepage).search_car_select
end

Then(/^then the Pay at Counter rate is higher then the Pay Now rate$/) do
  on(Homepage).wait_until(10) {on(Homepage).car_type_element.visible?}
  counter_val =  on(Homepage).first_car_counter_value.text[1..-1].to_i
  now_val = on(Homepage).first_car_now_value.text[1..-1].to_i
  expect(counter_val > now_val).to be true
end

Given(/^a list of available vehicles$/) do
  on(Homepage).location_field = 'cmh'
  on(Homepage).start_date = '09012017'
  on(Homepage).search_car_select
  on(Homepage).end_date = '09032017'
  on(Homepage).search_car_select
end

When(/^I open a vehicle's information$/) do
  on(Homepage).wait_until(10) {on(Homepage).car_type_element.visible?}
  on(Homepage).car_info
end

Then(/^the mpg for the vehicle is shown$/) do
  on(Homepage).wait_until(10) {on(Homepage).car_type_element.visible?}
  expect(on(Homepage).mpg_element.visible?).to be true
end