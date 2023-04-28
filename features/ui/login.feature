@ui
@login
Feature: Login to Swag Labs

  Scenario: Swag Labs should login user with valid credentials
    Given I open the login page
    When I enter valid email and password to the form and click on Login button
    Then the page with Products title should appear