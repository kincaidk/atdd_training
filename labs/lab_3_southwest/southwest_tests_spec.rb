require 'rspec'
require 'watir-webdriver'

describe 'a flight\'s travel time' do

  before(:all) do
    @browser = Watir::Browser.new(:chrome)
    @browser.goto('https://www.southwest.com')
  end

  it 'returns the correct flight in a list of flights' do
    @browser.text_field(:id, 'air-city-departure').set('DEN')
    @browser.text_field(:id, 'air-city-arrival').set('CMH')
    @browser.text_field(:id, 'air-date-departure').set('10/10')
    @browser.text_field(:id, 'air-date-return').set('10/18')
    @browser.button(:id, 'jb-booking-form-submit-button').click

    table = @browser.table(:id, 'faresOutbound')
    row = table.row(:id, 'outbound_flightRow_11')
    cell = row[2]
    # column = table.col(:class, 'flight_column')


    expect(@browser.url).to eq 'https://www.southwest.com/flight/select-flight.html?displayOnly=&int=HOMEQBOMAIR'
    expect(cell.text.split("\n")[0]).to eq "777"
  end

  it 'returns the correct flight TIME for a specific flight' do
    # @browser.text_field(:id, 'air-city-departure').set('DEN')
    # @browser.text_field(:id, 'air-city-arrival').set('CMH')
    # @browser.text_field(:id, 'air-date-departure').set('10/10')
    # @browser.text_field(:id, 'air-date-return').set('10/18')
    # @browser.button(:id, 'jb-booking-form-submit-button').click

    table = @browser.table(:id, 'faresOutbound')
    row = table.row(:id, 'outbound_flightRow_11')
    cell = row[4]
    # column = table.col(:class, 'flight_column')


    expect(@browser.url).to eq 'https://www.southwest.com/flight/select-flight.html?displayOnly=&int=HOMEQBOMAIR'
    expect(cell.text).to eq "2h 40m"
  end
end

describe 'a flights arrival and departure locations' do
  before(:all) do
    @browser = Watir::Browser.new(:chrome)
    @browser.goto('https://www.southwest.com')
  end

  it 'lists Los Angeles, CA and San Francisco, CA as the departure and arrival locations, respectively' do
    @browser.text_field(:id, 'air-city-departure').set('LAX')
    @browser.text_field(:id, 'air-city-arrival').set('SFO')
    @browser.text_field(:id, 'air-date-departure').set('10/10')#arbitrary
    @browser.text_field(:id, 'air-date-return').set('10/18')#arbitrary
    @browser.button(:id, 'jb-booking-form-submit-button').click

    # div = @browser.div(:class, 'outboundResultsHeaderWrapper')
    # h2 = @browser.h2(:id, 'outbound_results')
    span = @browser.span(:class, 'bookingOptionsHeader--sub-heading')

    expect(span.text).to eq "Los Angeles, CA to San Francisco, CA"

  end
end

describe 'the senior citizen limitation for searching for flights by points' do
  before(:all) do
    @browser = Watir::Browser.new(:chrome)
    @browser.goto('https://www.southwest.com')
  end

  it 'should prevent any amount of seniors from being selected when searching for flights by points' do
    # @browser.text_field(:id, 'air-city-departure').set('LAX')
    # @browser.text_field(:id, 'air-city-arrival').set('SFO')
    # @browser.text_field(:id, 'air-date-departure').set('10/10')#arbitrary
    # @browser.text_field(:id, 'air-date-return').set('10/18')#arbitrary
    # @browser.button(:id, 'jb-booking-form-submit-button').click

    points_selection = @browser.radio(:id, "price-type-points")
    seniors_selection = @browser.text_field(:id, 'air-pax-count-seniors')
    points_selection.click

    expect(seniors_selection).to be_disabled
  end

end