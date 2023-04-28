@ui
@product_details
Feature: Display the details of product

  Background: visit the website and login with valid credentials
    Given I open the login page
    And I enter valid email and password to the form and click on Login button

  Scenario: Swag Labs should display the page with the same product details for a random product as on the Products page
    When I click on random product on Products page
    Then the appeared page should contain the same product name
    And the appeared page should contain the same product description
    And the appeared page should contain the same product price
