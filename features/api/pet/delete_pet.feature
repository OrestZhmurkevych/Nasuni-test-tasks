@api
@pet
@delete_pet
Feature: Delete pet

  Scenario: Verify DELETE /pet/{petId} endpoint response code and body is correct
    When I send POST request to endpoint /pet with valid request body
    And I send DELETE request to endpoint /pet/{petId} with id of the previously created pet
    Then the response code is 200
    And the response body contains message field with id of the previously created pet