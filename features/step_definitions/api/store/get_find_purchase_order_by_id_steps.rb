When(/^I send GET request to endpoint \/store\/order\/\{orderId} with id of the previously created purchase order$/) do
  purchase_order_id = JSON.parse(@response)['id']
  @response = @http_client.get("/store/order/#{purchase_order_id}")
  @logger.info("The order is --> #{JSON.parse(@response).to_s}")
end

Then('the response body contains id field with id of the previously created purchase order') do
  expect(JSON.parse(@response)['id']).to eq(@payload[:id])
end
