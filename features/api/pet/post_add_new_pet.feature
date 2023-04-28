@api
@pet
@add_new_pet
Feature: Add new pet

  @cleanup
  Scenario: Verify POST /pet endpoint response code and body is correct
    When I send POST request to endpoint /pet with valid request body
    Then the response code is 200
    And the response body should match the request body