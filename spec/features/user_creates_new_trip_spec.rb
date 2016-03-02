require "rails_helper"

feature "user creates new trip" do 
  scenario "successfully" do
  sign_in
  
  click_on "New Trip"
  fill_in "trip_location", with: "Philly"
  fill_in "trip_length", with: 7
  fill_in "trip_trip_type", with: 1
  click_on "Create Trip"

  expect(page).to have_css "p", text: "Philly"
  end
end