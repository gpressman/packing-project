module Features

  def sign_in
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
end