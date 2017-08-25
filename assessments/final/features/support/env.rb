require 'cucumber'
require 'page-object'
require 'rspec/expectations'

World(RSpec::Matchers)
World(RSpec::Expectations)
World(PageObject::PageFactory)

class Homepage
  include PageObject

  page_url('https://www.budget.com/en/home')

  text_field(:location_field, id: 'PicLoc_value')
  text_field(:start_date, id: 'from')
  text_field(:end_date, id: 'to')

  button(:search_car_select, id: 'res-home-select-car')
  button(:search_continue, id: 'res-mobile-SelectContinue')

  h3(:car_type, text: 'Compact')

  link(:car_info, id: 'res-vehicles-details')

  span(:mpg, class: 'mpg-seats-feat')

  def first_car_counter_value
    @browser.p(:class, 'payamntp')
  end

  def first_car_now_value
    @browser.p(:class, 'payamntr')
  end

  # p(:counter_value)
  # p(:now_value)
end