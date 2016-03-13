require "rails_helper"

feature "user creates item" do 
  scenario "successfully" do
  sign_in
  
  click_on "New Trip"
  
  fill_in "trip_location", with: "PHilly"
  fill_in "trip_length", with: 7
  select "Festival", from: "trip_trip_type"
  click_on "Create Trip"
  
  fill_in "list_owner", with: "Gabe"
  click_on "Create List"

  fill_in "item_name", with: "Towel"
  select "Toiletries", from: "item_item_type"
  click_on "Create Item"
  

  expect(page).to have_css "li", text: "Towel"
  end
end