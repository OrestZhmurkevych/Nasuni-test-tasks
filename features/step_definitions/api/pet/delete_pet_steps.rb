When(/^I send DELETE request to endpoint \/pet\/\{petId} with id of the previously created pet$/) do
  @response = @http_client.delete("/pet/#{@payload[:id]}")
  @logger.info("The pet with ID --> #{JSON.parse(@response)['message']} is deleted") if @response.code == 200
end

Then('the response body contains message field with id of the previously created pet') do
  expect(JSON.parse(@response)['message']).to eq(@payload[:id].to_s)
end