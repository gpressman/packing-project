require "rails_helper"

feature "user creates account" do 
  scenario "successfully" do 
  	visit root_path
  	click_on "create"

  	fill_in "user_email", with: "a@b.com"
  	fill_in "user_password", with: "password"
  	fill_in "user_password_confirmation", with: "password"
    click_on "Sign up"

  	expect(page).to have_css "p", text: "a@b.com"
  end
end