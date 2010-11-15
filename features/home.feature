Feature: Home page

  Scenario: basic home page
     Given I am on the homepage
     Then I should see "Welcome"
     And I should see "Login or Sign Up"

  Scenario: home page when logged in
    Given I am logged in
    When I am on the homepage
    Then I should see "Edit Profile or Logout"
