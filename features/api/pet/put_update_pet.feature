@api
@pet
@update_pet
Feature: Update pet

  @cleanup
  Scenario: Verify PUT /pet endpoint response code and body is correct
    When I send POST request to endpoint /pet with valid request body
    And I send PUT request to endpoint /pet with valid request body
    Then the response code is 200
    And the response body should match the request body