require "rails_helper"

feature "user creates new trip" do 
  scenario "successfully" do
  Suggestion.create(name: "Festival")
  sign_in
  
  click_on "New Trip"
  fill_in "trip_location", with: "Philly"
  fill_in "trip_length", with: 7
  select "Festival", from: "trip_trip_type"
  click_on "Create Trip"

  expect(page).to have_css "p", text: "Festival"
  end
end