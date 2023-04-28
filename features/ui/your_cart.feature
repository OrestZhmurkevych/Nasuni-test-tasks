@ui
@your_cart
Feature: Display the Your Cart page

  Background: visit the website and login with valid credentials
    Given I open the login page
    And I enter valid email and password to the form and click on Login button

  Scenario: The Your Cart page must display the same amount of products as was selected by user
    When I click Add to cart button for 3 product
    And I click on shopping cart icon
    Then the page with Your Cart title should appear
    And the shopping icon should display correct amount of products
    And the page should display correct amount of products in item list