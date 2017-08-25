# Southwest Lab

This lab is designed to familiarize yourself with Watir and Page Object. 

# Scenarios:

  - search for a flight from Denver, Colorado to Columbus, Ohio for 
a departure date of 10/10 and a return date of 10/18. 
Validate that flight 777's travel time is 2hr 40m

- search for a flight from LAX to SFO (using the Airport codes)
Validate the flights listed are for Los Angeles, CA to San Francisco, CA

- Validate that You cannot add seniors when searching for flights by Points

- Validate that One Way trips do not allow for a return date to be entered

- Validate that an invalid promo code produces an error message

- Book a flight between any 2 cities. Choose a departure flight and a return flight. 
On the Summary Page, validate that the f"Air Total" is within $1 of the combined cost of the flights.
Validate that the selected flights are reflected in the summary.

- Book a flight between any 2 cities. Choose a departure flight and a return flight. 
On the Summary Page, remove the flight from the shopping cart. Validate that the 
flight was removed from the list.

- Validate that for a given search that all flights have a price for Buisness Select

### Resources

Here are some useful resources:

* [Rspec Cheet Sheet](https://www.anchor.com.au/wp-content/uploads/rspec_cheatsheet_attributed.pdf) 
* [Watir](http://watir.com/guides/) 
* [Page Object](https://github.com/cheezy/page-object) 

