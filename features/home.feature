Feature: Home page

  Scenario: basic home page
    Given I am not logged in
    When I am on the homepage
    Then I should see "Welcome"
      And I should see "Log in or Sign Up"
      And I should not see "Edit Profile | Log out"

  Scenario: home page when logged in
    Given I am logged in
    When I am on the homepage
    Then I should see "Welcome"
      And I should see "Edit Profile | Log out"
      And I should not see "Log in or Sign Up"
