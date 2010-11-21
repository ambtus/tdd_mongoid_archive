Feature: Home page

  Scenario: basic home page
    Given I am not logged in
    When I am on the homepage
    Then I should see "Welcome"
      And I should see "Home"
        But I should not see "Home" within "a"
      And I should see "Log in or Sign Up"
        But I should not see "Edit profile | Log out"
      And I should see "People" within "a"

  Scenario: home page when logged in
    Given I am logged in as "testuser"
    When I am on the homepage
    Then I should see "Welcome"
      And I should see "Edit profile | Log out"
        But I should not see "Log in or Sign Up"
