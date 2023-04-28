When(/^I click Add to cart button for (\d+) products?$/) do |count|
  @current_page = Page::Products.new
  @amount_of_products = count
  @amount_of_products.times { @current_page.add_to_cart_buttons.sample.click }
end

When('I click on shopping cart icon') do
  @current_page.header.shopping_cart_icon.click
  @current_page = Page::YourCart.new
end

Then('the shopping icon should display correct amount of products') do
  expect(@current_page.header.shopping_cart_icon.text).to eq(@amount_of_products.to_s)
end

Then('the page should display correct amount of products in item list') do
  expect(@current_page.cart_items.count).to eq(@amount_of_products)
end