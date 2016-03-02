require "rails_helper"

feature "tests sign_in helper" do 
  scenario "successfully" do
  	sign_in

  	expect(page).to have_css "p", text: "a@b.com"
  end
end