Feature: Homepage

  As site visitor
  I need the correct experience on the homepage
  So that I can continue browsing into the site

  Background:
    Given I am on the homepage

  Scenario: The heading text can be customised
    Then I should see "My custom frontpage heading"

  Scenario: All 17 goal icons are visible
    Then I should see 17 "goal icon" elements

  Scenario: All indicator data can be downloaded as a zip file
    Then I should see "Download all data as a zip file"
