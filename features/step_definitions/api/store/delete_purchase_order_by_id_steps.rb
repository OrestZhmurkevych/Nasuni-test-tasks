When(/^I send DELETE request to endpoint \/store\/order\/\{orderId} with id of the previously created purchase order$/) do
  purchase_order_id = JSON.parse(@response)['id']
  @response = @http_client.delete("/store/order/#{purchase_order_id}")
  @logger.info("The purchase order with ID --> #{JSON.parse(@response)['message']} is deleted") if @response.code == 200
end

Then('the response body contains message field with id of the previously created purchase order') do
  expect(JSON.parse(@response)['message']).to eq(@payload[:id].to_s)
end