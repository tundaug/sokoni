Feature: Posts
    Scenario: List posts
        Given I have ten posts
        And I visit the home page
        Then I should see the welcome text
        And The page should have title
        And I should see the navigation links
        Then I should see the posts listed
