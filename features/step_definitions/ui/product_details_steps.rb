When('I click on random product on Products page') do
  @current_page = Page::Products.new
  random_product = @current_page.list_of_products.sample
  @random_products_name = @current_page.get_products_name(random_product)
  @random_products_description = @current_page.get_products_description(random_product)
  @random_products_price = @current_page.get_products_price(random_product)
  @current_page.click_on_product(random_product)
end

Then('the appeared page should contain the same product name') do
  @current_page = Page::ProductDetails.new
  expect(@current_page.product_name.text).to eq(@random_products_name)
end

Then('the appeared page should contain the same product description') do
  expect(@current_page.product_description.text).to eq(@random_products_description)
end

Then('the appeared page should contain the same product price') do
  expect(@current_page.product_price.text).to eq(@random_products_price)
end