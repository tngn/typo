Feature: Merge Articles
  As a blog administrator
  In order to group articles on similar topics
  I want to be able to merge articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And I am in an article view

  Scenario: Successfully merge articles
    Given I am on the edit article page
    When I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
    Then I should see "Lorem Ipsum"

  Scenario: Non-admin cannot merge articles

  Scenario: Merge not available for a new article
