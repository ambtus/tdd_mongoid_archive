Feature: User's can have psueds

  Scenario: Add a pseud
    Given I am logged in as "testuser"
    When I am on the homepage
      And I follow "Edit profile"
        And I follow "Manage my pseuds"
    Then I should see "testuser (default)"
    When I follow "Add a pseud"
