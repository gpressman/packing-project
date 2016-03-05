module Features

  def sign_in
    Suggestion.create(name: "Festival")
    User.create(email: "a@b.com", password: "password")
    visit new_user_session_path
    fill_in "user_email", with: "a@b.com"
    fill_in "user_password", with: "password"
    click_on "Log in"
  end

  def create_trip
  	sign_in
    visit new_trip_path
    fill_in "trip_location", with: "PHilly"
    fill_in "trip_length", with: 7
    select "Festival", from: "trip_trip_type"
    click_on "Create Trip"
  end

  def create_list
    create_trip
    fill_in "list_owner", with: "Gabe"
    click_on "Create List"
  end

  def create_item
    create_list
    fill_in "item_name", with: "Towel"
    select "Toiletries", from: "item_item_type"
    click_on "Create Item"
  end
end