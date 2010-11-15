Feature: sign up and log in

  Scenario: sign up
    Given there are no users
    When I am on the homepage
      And I follow "Sign Up"
        Then I should not see "Log in"
      And I fill in "Login" with "testuser"
      And I fill in "Email" with "testuser@example.com"
      And I fill in "Password" with "secret"
      And I fill in "Password confirmation" with "secret"
      And I press "Sign up"
    Then I should see "You have signed up successfully."

  Scenario: log in
    Given there is a user "testuser"
    When I am on the homepage
      And I follow "Log in"
        Then I should not see "Sign up"
      And I fill in "Login" with "testuser"
      And I fill in "Password" with "secret"
      And I press "Log in"
    Then I should see "Logged in successfully."
