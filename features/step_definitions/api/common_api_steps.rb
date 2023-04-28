Then(/^the response code is (\d+)$/) do |expected_code|
  actual_code = @response.code
  expect(actual_code).to eq(expected_code)
end

Then('the response body should match the request body') do
  expect(@response.body).to eq(@payload.to_json)
end