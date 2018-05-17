def signup
  visit "/"
  click_link "Sign up"
  fill_in "user_username", with: "test1"
  fill_in "user_email", with: "test1@gmail.com"
  fill_in "user_password", with: "test-1"
  fill_in "user_password_confirmation", with: "test-1"
  click_button "Sign up"
end
