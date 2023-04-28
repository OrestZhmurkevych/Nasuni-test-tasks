@api
@store
@place_pet_order
Feature: Place an order for a pet

  @cleanup
  Scenario: Verify POST /store/order endpoint response code and body is correct
    When I send POST request to endpoint /pet with valid request body
    And I send POST request to endpoint /store/order with valid request body
    Then the response code is 200
    And the response body should match the request body