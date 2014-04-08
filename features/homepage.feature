Feature: Posts
    Scenario: List posts
        Given I have ten posts
        And I visit the home page
        Then I should see the posts listed
