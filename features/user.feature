Feature: sign up and log in

  Scenario: sign up
    Given there are no users
    When I am on the homepage
      And I follow "Sign Up"
      And I fill in "Login" with "testuser"
      And I fill in "Email" with "testuser@example.com"
      And I fill in "Password" with "secret"
      And I fill in "Password confirmation" with "secret"
      And I press "Sign up"
    Then I should see "You have signed up successfully."


