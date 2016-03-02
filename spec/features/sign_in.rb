module Features

  def sign_in
    User.create(email: "a@b.com", password: "password")
    visit new_user_session_path
    fill_in "user_email", with: "a@b.com"
    fill_in "user_password", with: "password"
    click_on "Log in"
  end
end