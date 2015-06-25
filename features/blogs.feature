Feature: The bloging Engine
  In order to allow users of the system to comunicate, the system will provide a blogigng platform.

  Scenario: Adding a new blog
    Given that a user is logged in
    And I am in the index page
    When I click on the "Blog" link
    And I fill in "blog_name" with "Test name"
    And I fill in "blog_subject" with "Test Subject"
    And I click on the button "Create Blog"
    Then I should see "Test name" and "Test Subject"

  Scenario: Listing blogs
    Given that a user is logged in
    And "2" blogs exist
    When I visit the blogs page
    Then I should see a list of the blogs
