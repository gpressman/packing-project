require "rails_helper"

feature "user creates new list" do
  scenario "successfully" do
  create_trip

  fill_in "list_owner", with: "Gabe"
  click_on "Create List"

  expect(page).to have_css "p", text: "Gabe"

  end
end