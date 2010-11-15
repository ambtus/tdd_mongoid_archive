Given /^there are no users$/ do
  User.destroy_all
end

Given /^I am not logged in$/ do
  visit('/users/sign_out') # ensure that at least
end

Given /^there is a user "([^\"]*)"$/ do |login|
  old_user = User.where(:login => login).first
  unless old_user
    User.new(:email => "#{login}@example.org",
             :login => login,
             :password => "secret",
             :password_confirmation => "secret").save!
  end
end

Given /^I am logged in$/ do
  login = 'tester'
  password = 'secret'

  Given %{there is a user "#{login}"}
  visit new_user_session_path
  fill_in "user_login", :with => "#{login}"
  fill_in "user_password", :with => "#{password}"
  click_button "Sign in"
end
