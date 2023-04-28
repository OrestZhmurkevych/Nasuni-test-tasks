When(/^I send POST request to endpoint \/pet with valid request body$/) do
  @payload = {
    "id": Random.new.rand(1000),
    "category": {
      "id": 0,
      "name": "string"
    },
    "name": "dolphin",
    "photoUrls": [
      "string"
    ],
    "tags": [
      {
        "id": 0,
        "name": "string"
      }
    ],
    "status": "available"
  }
  @response = @http_client.post('/pet', @payload.to_json)
  @logger.info("The pet is created --> #{JSON.parse(@response).to_s}") if @response.code == 200
  @cleanup_manager.add_item('pet', JSON.parse(@response)['id'])
end
