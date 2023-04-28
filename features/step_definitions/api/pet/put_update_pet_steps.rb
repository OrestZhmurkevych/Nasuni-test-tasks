When(/^I send PUT request to endpoint \/pet with valid request body$/) do
  @payload[:name] = 'UPDATED_dolphin'
  @response = @http_client.put('/pet', @payload.to_json)
  @logger.info("The updated pet is --> #{JSON.parse(@response).to_s}") if @response.code == 200
end
