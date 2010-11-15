Given /^I am not logged in$/ do
  visit('/users/sign_out') # ensure that at least
end

Given /^there is a user "([^\"]*)" with password "([^\"]*)"$/ do |login, password|
  old_user = User.where(:login => login).first
  if old_user
    old_user.password = password
    old_user.password_confirmation = password
    old_user.save
  else
    User.new(:email => "#{login}@example.org",
             :login => login,
             :password => password,
             :password_confirmation => password).save!
  end
end

Given /^I am logged in$/ do
  login = 'tester'
  password = 'secret'

  Given %{there is a user "#{login}" with password "#{password}"}
  visit new_user_session_path
  fill_in "user_login", :with => "#{login}"
  fill_in "user_password", :with => "#{password}"
  click_button "Sign in"
end
