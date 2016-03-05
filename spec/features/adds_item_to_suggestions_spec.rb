require "rails_helper"

feature "when item is added to list it also adds to suggestions" do
  scenario "successfully" do
  create_item
  
  expect(page).to have_css "p", text: "Towel"

  end
end