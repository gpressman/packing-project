require "rails_helper"

  feature "item gets added to preset" do 
  	scenario "successfully" do 
      create_item
      item = Item.find_by(name: "Towel")
      suggestion = Suggestion.find_by(name: "Festival")
      suggestion.items << item
      suggestion.items << item
      suggestion.items << item
      click_on "Logout"
      create_item

      expect(page).to have_css "span", text: "Towel"
  	end
  end