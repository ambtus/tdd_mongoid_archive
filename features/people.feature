Feature: People pages

  Scenario: empty people index
    Given there are no users
    When I am on the homepage
      And I follow "People"
    Then I should see "No people!"
      And I should see "People"
    But I should not see "People" within "a"

  Scenario: people index with links
    Given there is a user "testuser1"
      And there is a user "testuser2"
    When I am on the homepage
      And I follow "People"
    Then I should not see "No people!"
      And I should see "testuser1" within "a"
      And I should see "testuser2" within "a"
    When I follow "testuser1"
    Then I should see "testuser1"
      But I should not see "testuser1" within "a"

