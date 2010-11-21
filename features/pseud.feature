Feature: User's can have psueds

  Scenario: Add a pseud
    Given there are no users
    When I am logged in as "testuser"
      And I am on the homepage
      And I follow "Edit profile"
        And I follow "Manage my pseuds"
    Then I should see "testuser (default)"
      And I should not see "Make default"
      And I should not see "Remove"
    When I follow "Add a pseud"
      And I fill in "Name" with "Beautiful Long Name!"
      And I press "Submit"
    Then I should see "Beautiful Long Name!"
      And I should see "testuser (default)"
    When I follow "Make default"
    Then I should see "Beautiful Long Name! (default)"
      And I should not see "testuser (default)"
      But I should see "testuser"

