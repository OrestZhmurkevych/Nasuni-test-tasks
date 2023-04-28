When(/^I send POST request to endpoint \/store\/order with valid request body$/) do
  @payload = {
    "id": Random.new.rand(1000),
    "petId": JSON.parse(@response)['id'],
    "quantity": 0,
    "shipDate": "2023-04-23T23:43:47.400+0000",
    "status": "placed",
    "complete": true
  }
  @response = @http_client.post('/store/order', @payload.to_json)
  @logger.info("The purchase order is created --> #{JSON.parse(@response).to_s}") if @response.code == 200
  @cleanup_manager.add_item('purchase_order', JSON.parse(@response)['id'])
end
