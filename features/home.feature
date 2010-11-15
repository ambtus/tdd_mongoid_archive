Feature: Home page

  Scenario: basic home page
    Given I am not logged in
    When I am on the homepage
    Then I should see "Welcome"
      And I should see "Log in or Sign Up"

  Scenario: home page when logged in
    Given I am logged in
    When I am on the homepage
    Then I should see "Welcome"
      And I should see "Edit Profile | Log out"
