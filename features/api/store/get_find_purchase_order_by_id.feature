@api
@store
@get_purchase_order_by_id
Feature: Find purchase order by id

  @cleanup
  Scenario: Verify GET /store/order/{orderId} endpoint response code and body is correct
    When I send POST request to endpoint /pet with valid request body
    And I send POST request to endpoint /store/order with valid request body
    And I send GET request to endpoint /store/order/{orderId} with id of the previously created purchase order
    Then the response code is 200
    And the response body contains id field with id of the previously created purchase order